//
//  NSValueTransformer+UAMTLXMLTransformerAdditions.m
//  Mantle
//
//  Created by Matthew Baranowski on 6/26/13.
//  Copyright (c) 2013 Matthew Baranowski. All rights reserved.
//

#import "NSValueTransformer+UAMTLXMLTransformerAdditions.h"
#import "UAMTLModelProtocol.h"
#import "UAMTLValueTransformer.h"
#import "UAMTLXMLAdapter.h"


@implementation NSValueTransformer (UAMTLXMLTransformerAdditions)

+ (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter* _dateFormatter;
    if (!_dateFormatter)
    {
        _dateFormatter = [NSDateFormatter new];
        [_dateFormatter setDateStyle:NSDateFormatterFullStyle];
        [_dateFormatter setTimeStyle:NSDateFormatterFullStyle];
    }
    
    return _dateFormatter;
}

+ (NSValueTransformer *)UAMTL_XMLTransformerForDateWithFormat:(NSString*)dateFormat {
	return [UAMTLValueTransformer
            reversibleTransformerWithForwardBlock:^id(NSArray *nodes) {
                if (nodes == nil || nodes.count == 0) return nil;
                
                UADDXMLNode* node = nodes[0];
                NSDateFormatter* formatter = [NSValueTransformer dateFormatter];
                [formatter setDateFormat:dateFormat];
                
                NSString* locale = @"en_US_POSIX";
                if ([node kind] == UADDXMLElementKind) {
                    UADDXMLElement* element = (UADDXMLElement*)node;
                    UADDXMLNode* node = [element attributeForName:@"locale"];
                    locale = [node stringValue];
                }
                
                [formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:locale]];
                
                id myDate;
                NSError* error;
                if (![formatter getObjectValue:&myDate
                                     forString:[node stringValue]
                                         range:nil
                                         error:&error]) {
                    return nil;
                }
                
                return myDate;
            }
            reverseBlock:^(NSDate *date) {
                NSDateFormatter* formatter = [NSValueTransformer dateFormatter];
                [formatter setDateFormat:dateFormat];
                return [formatter stringFromDate:date];
            }];
}


+ (NSValueTransformer *)UAMTL_XMLTransformerForInteger {
	return [UAMTLValueTransformer
    reversibleTransformerWithForwardBlock:^ id (NSArray *nodes) {
                    if ([nodes[0] stringValue] != nil && ![[nodes[0] stringValue] isEqualToString:@""])
                    {
                        return @([nodes[0] stringValue].integerValue);
                    }
                    else
                    {
                        return nil;
                    }
           } 
            reverseBlock:^(NSNumber* num) {
                return [    num stringValue];
            }];
}

+ (NSValueTransformer *)UAMTL_XMLTransformerForURL {
    return [UAMTLValueTransformer
            reversibleTransformerWithForwardBlock:^ id (NSArray *nodes) {
                if (nodes == nil || nodes.count == 0) return nil;
                UADDXMLNode* node = nodes[0];
                return [NSURL URLWithString:node.stringValue];
            }
            reverseBlock:^ id (NSURL *URL) {
                if (![URL isKindOfClass:NSURL.class]) return nil;
                return URL.absoluteString;
            }];
}

+ (NSValueTransformer *)UAMTL_XMLTransformerWithModelClass:(Class)modelClass {
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLModel)]);
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLXMLSerializing)]);
    
	return [UAMTLValueTransformer
            reversibleTransformerWithForwardBlock:^ id (NSArray *nodes) {
                if (nodes == nil || nodes.count == 0) return nil;
//                NSAssert([nodes[0] isKindOfClass:UADDXMLNode.class], @"Expected a UADDXMLNode, got: %@", nodes[0]);
                return [UAMTLXMLAdapter modelOfClass:modelClass fromXMLNode:nodes[0] error:NULL];
            }
            reverseBlock:^ id (NSObject<UAMTLModel, UAMTLXMLSerializing> *model) {
                if (model == nil) return nil;
                
                NSAssert([model conformsToProtocol:@protocol(UAMTLModel)], @"Expected a model object conforming to <UAMTLModel>, got %@", model);
                NSAssert([model conformsToProtocol:@protocol(UAMTLXMLSerializing)], @"Expected a model object conforming to <UAMTLXMLSerializing>, got %@", model);
                
                return @[ [UAMTLXMLAdapter XMLElementFromModel:model] ];
            }];
}

+ (NSValueTransformer *)UAMTL_XMLArrayTransformerWithModelClass:(Class)modelClass {
	NSValueTransformer *xmlTransformer = [self UAMTL_XMLTransformerWithModelClass:modelClass];
    
	return [UAMTLValueTransformer
            reversibleTransformerWithForwardBlock:^ id (NSArray *nodes) {
                if (nodes == nil) return nil;
                NSMutableArray *models = [NSMutableArray arrayWithCapacity:nodes.count];
                for (UADDXMLNode *child in nodes) {
                    if ([child isKindOfClass:[UADDXMLElement class]] || [child kind] == UADDXMLElementKind) {
                        id model = [xmlTransformer transformedValue:@[child] ];
                        if (model == nil) continue;
                        [models addObject:model];
                    }
                }
                
                return models;
            }
            reverseBlock:^ id (NSArray *models) {
                if (models == nil) return nil;
                
                NSAssert([models isKindOfClass:NSArray.class], @"Expected a array of model objects conforming to UAMTLModel, got: %@", models);
                
                NSMutableArray *xmlNodes = [NSMutableArray arrayWithCapacity:models.count];
                for (NSObject<UAMTLModel> *model in models) {
                    UADDXMLNode *node = [xmlTransformer reverseTransformedValue:model];
                    if (node == nil) continue;
                    
                    [xmlNodes addObject:node];
                }
                
                return xmlNodes;
            }
            ];
}

+ (NSValueTransformer *)UAMTL_XMLNonUniformObjectArrayTransformerWithModelClass:(Class)modelClass {
    
	return [UAMTLValueTransformer
            reversibleTransformerWithForwardBlock:^ id (NSArray *nodes) {
                if (nodes == nil || nodes.count == 0) return nil;
                
                NSMutableArray *models = [NSMutableArray arrayWithCapacity:nodes.count];
                for (UADDXMLNode *child in nodes) {
                    
                    Class classForNode = [modelClass classForParsingXML:child];
                    NSValueTransformer *xmlTransformer = [self UAMTL_XMLTransformerWithModelClass:classForNode];
                    id model = [xmlTransformer transformedValue:@[child]];
                    if (model == nil) continue;
                    [models addObject:model];
                }
                
                return models;
            }
            reverseBlock:^ id (NSArray *models) {
                if (models == nil) return nil;
                
                NSAssert([models isKindOfClass:NSArray.class], @"Expected an array of model objects conforming to <UAMTLModel>, got: %@", models);
                
                NSMutableArray *xmlNodes = [NSMutableArray arrayWithCapacity:models.count];
                for (NSObject<UAMTLModel> *model in models) {
                    NSValueTransformer *xmlTransformer = [self UAMTL_XMLTransformerWithModelClass:[model class]];
                    UADDXMLNode *node = [xmlTransformer reverseTransformedValue:model];
                    if (node == nil) continue;
                    
                    [xmlNodes addObject:node];
                }
                
                return xmlNodes;
            }
            ];
}

@end
