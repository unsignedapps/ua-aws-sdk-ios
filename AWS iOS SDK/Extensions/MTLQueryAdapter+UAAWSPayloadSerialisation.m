//
//  MTLQueryAdapter+UAAWSPayloadSerialisation.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "MTLQueryAdapter+UAAWSPayloadSerialisation.h"
#import "UAAWSRequest.h"
#import "UAAWSResponse.h"

@implementation MTLQueryAdapter (UAAWSPayloadSerialisation)

+ (NSData *)dataForRequest:(UAAWSRequest *)request error:(NSError *__autoreleasing *)error
{
    NSAssert([request conformsToProtocol:@protocol(MTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <MTLModel>.");
    NSAssert([request conformsToProtocol:@protocol(MTLQuerySerializing)], @"Cannot serialise to a Query String when the request does not conform to MTLQuerySerializing.");
    
    NSString *queryString = [self queryStringFromModel:(NSObject<MTLModel,MTLQuerySerializing> *)request];
    if (queryString == nil)
        return nil;
    
    return [queryString dataUsingEncoding:NSUTF8StringEncoding];
}

+ (UAAWSResponse *)responseForData:(NSData *)data responseClass:(__unsafe_unretained Class)responseClass error:(NSError *__autoreleasing *)error
{
    NSAssert(NO, @"Parsing AWS Query strings not supported at this stage.");
    return nil;
    
//    NSAssert([responseClass isKindOfClass:[MTLModel class]], @"Cannot serialise to class %@ when it does not subclass MTLModel.", NSStringFromClass(responseClass));
//    NSAssert([responseClass conformsToProtocol:@protocol(MTLQuerySerializing)], @"Cannot serialise to class %@ as it does not conform to MTLJSONSerializing.", NSStringFromClass(responseClass));
//    
//    // Grab the query string
//    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    if (string == nil)
//        return nil;
//    
//    return [self model]
}

@end
