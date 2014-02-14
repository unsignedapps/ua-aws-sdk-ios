//
//  MTLXMLAdapter+UAAWSPayloadSerialisation.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "MTLXMLAdapter+UAAWSPayloadSerialisation.h"
#import "UAAWSRequest.h"
#import "UAAWSResponse.h"

@implementation MTLXMLAdapter (UAAWSPayloadSerialisation)

+ (NSData *)dataForRequest:(UAAWSRequest *)request error:(NSError *__autoreleasing *)error
{
    NSAssert([request conformsToProtocol:@protocol(MTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <MTLModel>.");
    NSAssert([request conformsToProtocol:@protocol(MTLXMLSerializing)], @"Cannot serialise to XML when the request does not conform to MTLJSONSerializing.");
    DDXMLElement *element = [self XMLElementFromModel:(NSObject<MTLModel, MTLXMLSerializing> *)request];
    
    if (element == nil)
        return nil;
    
    NSString *xmlString = [element stringValue];
    if (xmlString == nil)
        return nil;
    
    return [xmlString dataUsingEncoding:NSUTF8StringEncoding];
}

+ (UAAWSResponse *)responseForData:(NSData *)data responseClass:(__unsafe_unretained Class)responseClass error:(NSError *__autoreleasing *)error
{
    NSAssert([responseClass conformsToProtocol:@protocol(MTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <MTLModel>.");
    NSAssert([responseClass conformsToProtocol:@protocol(MTLXMLSerializing)], @"Cannot serialise to class %@ as it does not conform to MTLJSONSerializing.", NSStringFromClass(responseClass));
    
    // Grab the XML
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    if (string == nil)
        return nil;
    
    DDXMLDocument *document = [[DDXMLDocument alloc] initWithXMLString:string options:kNilOptions error:error];
    if (document == nil)
        return nil;
    
    return [self modelOfClass:responseClass fromXMLNode:document error:error];
}

@end
