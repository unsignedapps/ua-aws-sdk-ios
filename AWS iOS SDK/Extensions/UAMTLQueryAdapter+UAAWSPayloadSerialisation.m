//
//  UAMTLQueryAdapter+UAAWSPayloadSerialisation.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "UAMTLQueryAdapter+UAAWSPayloadSerialisation.h"
#import "UAAWSRequest.h"
#import "UAAWSResponse.h"

@implementation UAMTLQueryAdapter (UAAWSPayloadSerialisation)

+ (NSData *)dataForRequest:(UAAWSRequest *)request error:(NSError *__autoreleasing *)error
{
    NSAssert([request conformsToProtocol:@protocol(UAMTLModel)], @"Cannot serialise to JSON when the request does not does not conform to <UAMTLModel>.");
    NSAssert([request conformsToProtocol:@protocol(UAMTLQuerySerializing)], @"Cannot serialise to a Query String when the request does not conform to UAMTLQuerySerializing.");
    
    NSString *queryString = [self queryStringFromModel:(NSObject<UAMTLModel,UAMTLQuerySerializing> *)request];
    if (queryString == nil)
        return nil;
    
    return [queryString dataUsingEncoding:NSUTF8StringEncoding];
}

+ (UAAWSResponse *)responseForData:(NSData *)data responseClass:(__unsafe_unretained Class)responseClass error:(NSError *__autoreleasing *)error
{
    NSAssert(NO, @"Parsing AWS Query strings not supported at this stage.");
    return nil;
    
//    NSAssert([responseClass isKindOfClass:[UAMTLModel class]], @"Cannot serialise to class %@ when it does not subclass UAMTLModel.", NSStringFromClass(responseClass));
//    NSAssert([responseClass conformsToProtocol:@protocol(UAMTLQuerySerializing)], @"Cannot serialise to class %@ as it does not conform to UAMTLJSONSerializing.", NSStringFromClass(responseClass));
//    
//    // Grab the query string
//    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    if (string == nil)
//        return nil;
//    
//    return [self model]
}

+ (NSString *)contentType
{
    return nil;
}

@end
