//
//  UAMTLJSONAdapter+UAAWSPayloadSerialisation.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "UAMTLJSONAdapter+UAAWSPayloadSerialisation.h"
#import "UAAWSRequest.h"
#import "UAAWSResponse.h"

@implementation UAMTLJSONAdapter (UAAWSPayloadSerialisation)

+ (NSData *)dataForRequest:(UAAWSRequest *)request error:(NSError *__autoreleasing *)error
{
    NSAssert([request conformsToProtocol:@protocol(UAMTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <UAMTLModel>.");
    NSAssert([request conformsToProtocol:@protocol(UAMTLJSONSerializing)], @"Cannot serialise to JSON when the request does not conform to <UAMTLJSONSerializing>.");
    NSDictionary *dictionary = [self JSONDictionaryFromModel:(NSObject<UAMTLModel,UAMTLJSONSerializing> *)request];
    
    if (dictionary == nil)
        return nil;
    
    return [NSJSONSerialization dataWithJSONObject:dictionary options:kNilOptions error:error];
}

+ (UAAWSResponse *)responseForData:(NSData *)data responseClass:(__unsafe_unretained Class)responseClass error:(NSError *__autoreleasing *)error
{
    NSAssert([responseClass conformsToProtocol:@protocol(UAMTLModel)], @"Cannot serialise to class %@ as it does not conform to <UAMTLModel>.", NSStringFromClass(responseClass));
    NSAssert([responseClass conformsToProtocol:@protocol(UAMTLJSONSerializing)], @"Cannot serialise to class %@ as it does not conform to <UAMTLJSONSerializing>.", NSStringFromClass(responseClass));

    // Grab the JSON dictionary
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
    
    if (dictionary == nil)
        return nil;
    
    return [self modelOfClass:responseClass fromJSONDictionary:dictionary error:error];
}

+ (NSString *)contentType
{
    return @"application/x-amz-json-1.0";
}

@end
