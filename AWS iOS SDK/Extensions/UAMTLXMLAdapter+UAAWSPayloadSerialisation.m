//
//  UAMTLXMLAdapter+UAAWSPayloadSerialisation.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "UAMTLXMLAdapter+UAAWSPayloadSerialisation.h"
#import "UAAWSRequest.h"
#import "UAAWSResponse.h"

@implementation UAMTLXMLAdapter (UAAWSPayloadSerialisation)

+ (NSData *)dataForRequest:(UAAWSRequest *)request error:(NSError *__autoreleasing *)error
{
    NSAssert([request conformsToProtocol:@protocol(UAMTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <UAMTLModel>.");
    NSAssert([request conformsToProtocol:@protocol(UAMTLXMLSerializing)], @"Cannot serialise to XML when the request does not conform to UAMTLJSONSerializing.");
    UADDXMLElement *element = [self XMLElementFromModel:(NSObject<UAMTLModel, UAMTLXMLSerializing> *)request];
    
    if (element == nil)
        return nil;
    
    NSString *xmlString = [element stringValue];
    if (xmlString == nil)
        return nil;
    
    return [xmlString dataUsingEncoding:NSUTF8StringEncoding];
}

+ (UAAWSResponse *)responseForData:(NSData *)data responseClass:(__unsafe_unretained Class)responseClass error:(NSError *__autoreleasing *)error
{
    NSAssert([responseClass conformsToProtocol:@protocol(UAMTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <UAMTLModel>.");
    NSAssert([responseClass conformsToProtocol:@protocol(UAMTLXMLSerializing)], @"Cannot serialise to class %@ as it does not conform to UAMTLJSONSerializing.", NSStringFromClass(responseClass));
    
    // Grab the XML
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (string == nil)
        return nil;
    
    // is there only one namespace?
    Class<UAMTLXMLSerializing> klass = responseClass;
    NSDictionary *ns = [klass XMLNamespaceMappings];
    if (ns != nil && [ns count] == 1)
    {
        // force any namespace in there to match
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"xmlns=\"[^\"]+?\"" options:NSRegularExpressionCaseInsensitive error:nil];
        string = [regex stringByReplacingMatchesInString:string options:kNilOptions range:NSMakeRange(0, string.length) withTemplate:[NSString stringWithFormat:@"xmlns=\"%@\"", ns.allValues.firstObject]];
    }
    
    UADDXMLDocument *document = [[UADDXMLDocument alloc] initWithXMLString:string options:kNilOptions error:error];
    if (document == nil)
        return nil;
    
    return [self modelOfClass:responseClass fromXMLNode:document error:error];
}

+ (NSString *)stringForModel:(NSObject<UAMTLModel> *)model error:(NSError *__autoreleasing *)error
{
    NSAssert([model conformsToProtocol:@protocol(UAMTLModel)], @"Cannot serialise to XML when the model does not does not conform to <UAMTLModel>.");
    NSAssert([model conformsToProtocol:@protocol(UAMTLXMLSerializing)], @"Cannot serialise to XML when the model does not conform to UAMTLJSONSerializing.");
    UADDXMLElement *element = [self XMLElementFromModel:(NSObject<UAMTLModel, UAMTLXMLSerializing> *)model];
    
    if (element == nil)
        return nil;
    
    NSString *xmlString = [element stringValue];
    if (xmlString == nil)
        return nil;
    
    return xmlString;
}

+ (NSString *)contentType
{
    return nil;
}

@end
