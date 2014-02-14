//
//  MTLJSONAdapter+UAAWSPayloadSerialisation.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "MTLJSONAdapter+UAAWSPayloadSerialisation.h"
#import "UAAWSRequest.h"
#import "UAAWSResponse.h"

@implementation MTLJSONAdapter (UAAWSPayloadSerialisation)

+ (NSData *)dataForRequest:(UAAWSRequest *)request error:(NSError *__autoreleasing *)error
{
    NSAssert([request conformsToProtocol:@protocol(MTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <MTLModel>.");
    NSAssert([request conformsToProtocol:@protocol(MTLJSONSerializing)], @"Cannot serialise to JSON when the request does not conform to <MTLJSONSerializing>.");
    NSDictionary *dictionary = [self JSONDictionaryFromModel:(NSObject<MTLModel,MTLJSONSerializing> *)request];
    
    if (dictionary == nil)
        return nil;
    
    return [NSJSONSerialization dataWithJSONObject:dictionary options:kNilOptions error:error];
}

+ (UAAWSResponse *)responseForData:(NSData *)data responseClass:(__unsafe_unretained Class)responseClass error:(NSError *__autoreleasing *)error
{
    NSAssert([responseClass conformsToProtocol:@protocol(MTLModel)], @"Cannot serialise to class %@ as it does not conform to <MTLModel>.", NSStringFromClass(responseClass));
    NSAssert([responseClass conformsToProtocol:@protocol(MTLJSONSerializing)], @"Cannot serialise to class %@ as it does not conform to <MTLJSONSerializing>.", NSStringFromClass(responseClass));

    // Grab the JSON dictionary
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
    
    if (dictionary == nil)
        return nil;
    
    return [self modelOfClass:responseClass fromJSONDictionary:dictionary error:error];
}

@end
