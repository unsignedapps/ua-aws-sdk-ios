//
//  NSData+UAHMAC.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import <Foundation/Foundation.h>

@interface NSData (UAHMAC)

- (NSData *)UA_hmacSHA1WithKey:(NSString *)key;
- (NSData *)UA_hmacSHA256WithKey:(NSString *)key;
- (NSData *)UA_hmacSHA256WithDataKey:(NSData *)key;
- (NSData *)UA_sha256;
- (NSString *)UA_hexString;

@end
