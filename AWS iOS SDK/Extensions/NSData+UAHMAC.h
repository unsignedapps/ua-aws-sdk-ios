//
//  NSData+UAHMAC.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import <Foundation/Foundation.h>

@interface NSData (UAHMAC)

- (NSData *)hmacSHA1WithKey:(NSString *)key;
- (NSData *)hmacSHA256WithKey:(NSString *)key;

- (NSData *)sha256;
- (NSString *)hexString;

@end
