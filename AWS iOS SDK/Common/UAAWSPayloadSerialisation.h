//
//  UAAWSPayloadSerialisation.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import <Foundation/Foundation.h>

@class UAAWSRequest, UAAWSResponse;

@protocol UAAWSPayloadSerialisation <NSObject>

+ (NSData *)dataForRequest:(UAAWSRequest *)request error:(NSError **)error;
+ (UAAWSResponse *)responseForData:(NSData *)data responseClass:(Class)responseClass error:(NSError **)error;

@end
