    //
//  UAMTLXMLAdapter.m
//  Mantle
//
//  Created by Matthew Baranowski on 6/5/13.
//  Copyright (c) 2013 Matthew Baranowski. All rights reserved.
//

#import "UAMTLXMLAdapter.h"
#import "UAMTLModel.h"
#import "UAMTLReflection.h"
#import "UADDXMLNode.h"
#import "NSString+UADDXML.h"
#import "UAMTLValueTransformer.h"

NSString * const UAMTLXMLAdapterErrorDomain = @"UAMTLXMLAdapterErrorDomain";
const NSInteger UAMTLXMLAdapterErrorNoClassFound = 2;

// An exception was thrown and caught.
static const NSInteger UAMTLXMLAdapterErrorExceptionThrown = 1;

// Associated with the NSException that was caught.
static NSString * const UAMTLXMLAdapterThrownExceptionErrorKey = @"UAMTLXMLAdapterThrownException";

@interface UAMTLXMLAdapter ()

@property (nonatomic, strong, readonly) Class modelClass;
@property (nonatomic, copy, readonly) NSDictionary *XMLKeyPathsByPropertyKey;

@end


@implementation UAMTLXMLAdapter

+ (id)modelOfClass:(Class)modelClass fromXMLNode:(UADDXMLNode *)xmlNode error:(NSError **)error
{
	UAMTLXMLAdapter *adapter = [[self alloc] initWithXMLNode:xmlNode modelClass:modelClass error:error];
	return adapter.model;
}

+ (id)XMLElementFromModel:(NSObject<UAMTLModel,UAMTLXMLSerializing> *)model
{
	UAMTLXMLAdapter *adapter = [[self alloc] initWithModel:model];
	return [adapter XMLElement];
}

- (id)initWithXMLNode:(UADDXMLNode*)xmlNode modelClass:(Class)modelClass error:(NSError **)error
{
	NSParameterAssert(modelClass != nil);
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLModel)]);
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLXMLSerializing)]);
    
	if (xmlNode == nil) return nil;

	if ([modelClass respondsToSelector:@selector(classForParsingXML:)]) {
		modelClass = [modelClass classForParsingXML:xmlNode];
		if (modelClass == nil) {
			if (error != NULL) {
				NSDictionary *userInfo = @{
                               NSLocalizedDescriptionKey: NSLocalizedString(@"Could not parse XML", @""),
                               NSLocalizedFailureReasonErrorKey: NSLocalizedString(@"No model class could be found to parse XML.", @"")
                               };
                
				*error = [NSError errorWithDomain:UAMTLXMLAdapterErrorDomain code:UAMTLXMLAdapterErrorNoClassFound userInfo:userInfo];
			}
            
			return nil;
		}
        
		NSAssert([modelClass conformsToProtocol:@protocol(UAMTLModel)], @"Class %@ returned from +classForParsingXML: does not conform to <UAMTLModel>", modelClass);
		NSAssert([modelClass conformsToProtocol:@protocol(UAMTLXMLSerializing)], @"Class %@ returned from +classForParsingXML: does not conform to <UAMTLXMLSerializing>", modelClass);
	}
    
	self = [super init];
	if (self == nil) return nil;
    
	_modelClass = modelClass;
	_XMLKeyPathsByPropertyKey = [[modelClass XMLKeyPathsByPropertyKey] copy];

    NSSet* propertyKeys = [self.modelClass propertyKeys];
    
    // Verify that the root XPath exists.  If it does not then do not return an object.
    NSMutableDictionary *dictionaryValue = [[NSMutableDictionary alloc] initWithCapacity:propertyKeys.count];
    
    NSDictionary *ns = nil;
    if ([modelClass respondsToSelector:@selector(XMLNamespaceMappings)])
        ns = [modelClass XMLNamespaceMappings];

    NSString *rootPath = [[modelClass XPathPrefix] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"/"]];
    NSArray *nodes = [xmlNode nodesForXPath:rootPath namespaceMappings:ns error:error];
    
    if (nodes == nil || [nodes count] == 0)
    {
        // The root node doesn't exist return nil
        return nil;
    }

	for (NSString *propertyKey in [self.modelClass propertyKeys]) {
		NSString *keyPath = [self XMLKeyPathForKey:propertyKey];
		if (keyPath == nil) continue;
        keyPath = [[modelClass XPathPrefix] stringByAppendingString:keyPath];

		NSArray* nodes = [xmlNode nodesForXPath:keyPath namespaceMappings:ns error:error];
        if (nodes == nil || [nodes count] == 0) continue;
        

        
        @try {
            id value = nil;
            UADDXMLNode* node = nodes[0];
            NSValueTransformer *transformer = [self XMLTransformerForKey:propertyKey];
            if (transformer != nil) {
                value = [transformer transformedValue:nodes] ?: NSNull.null;
            } else {
                value = [node stringValue];
            }
            
            dictionaryValue[propertyKey] = value;

        } @catch (NSException* ex) {
			NSLog(@"*** Caught exception %@ parsing XML key path \"%@\" from: %@", ex, keyPath, xmlNode);
            
			// Fail fast in Debug builds.
#if DEBUG
			@throw ex;
#else
			if (error != NULL) {
				NSDictionary *userInfo = @{
                               NSLocalizedDescriptionKey: ex.description,
                               NSLocalizedFailureReasonErrorKey: ex.reason,
                               UAMTLXMLAdapterThrownExceptionErrorKey: ex
                               };
                
				*error = [NSError errorWithDomain:UAMTLXMLAdapterErrorDomain code:UAMTLXMLAdapterErrorExceptionThrown userInfo:userInfo];
			}
            
			return nil;
#endif

        }
    }
    
	_model = [self.modelClass modelWithDictionary:dictionaryValue error:error];
	if (_model == nil) return nil;
    
    return self;
}

- (id)initWithModel:(NSObject<UAMTLModel,UAMTLXMLSerializing> *)model {
	NSParameterAssert(model != nil);
    
	self = [super init];
	if (self == nil) return nil;
    
	_model = model;
	_modelClass = model.class;
	_XMLKeyPathsByPropertyKey = [[model.class XMLKeyPathsByPropertyKey] copy];
    
	return self;
}

- (NSString *)XMLKeyPathForKey:(NSString *)key {
	NSParameterAssert(key != nil); 
    
	id keyPath = self.XMLKeyPathsByPropertyKey[key];
	if ([keyPath isEqual:NSNull.null]) return nil;
    
	if (keyPath == nil) {
		return key;
	} else {
		return keyPath;
	}
}

- (UADDXMLElement *)XMLElement
{
    // completely abdicate responsibility and assume each model object serializes itself to proper html
	if ([self.model respondsToSelector:@selector(serializeToXMLElement)]) {
		return [self.model serializeToXMLElement];
    }
    
    return nil;
}


- (NSValueTransformer*)XMLTransformerForKey:(NSString*)key
{
	NSParameterAssert(key != nil);
    
	SEL selector = UAMTLSelectorWithKeyPattern(key, "XMLTransformer");
	if ([self.modelClass respondsToSelector:selector]) {
		NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[self.modelClass methodSignatureForSelector:selector]];
		invocation.target = self.modelClass;
		invocation.selector = selector;
		[invocation invoke];
        
		__unsafe_unretained id result = nil;
		[invocation getReturnValue:&result];
		return result;
	}
    
	if ([self.modelClass respondsToSelector:@selector(XMLTransformerForKey:)]) {
		return [self.modelClass XMLTransformerForKey:key];
	}
    
	return nil;
}
@end
