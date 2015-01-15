//
//  NSData+UAHMAC.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import "NSData+UAHMAC.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>
#import <CommonCrypto/CommonCryptor.h>

@implementation NSData (UAHMAC)

- (NSData *)UA_hmacSHA1WithKey:(NSString *)key
{
    if (key == nil)
        return nil;
    
    CCHmacContext context;
    const char    *keyCString = [key cStringUsingEncoding:NSASCIIStringEncoding];
    
    CCHmacInit(&context, kCCHmacAlgSHA256, keyCString, strlen(keyCString));
    CCHmacUpdate(&context, [self bytes], [self length]);
    
    unsigned char digestRaw[CC_SHA1_DIGEST_LENGTH];
    NSInteger     digestLength = CC_SHA1_DIGEST_LENGTH;
    
    CCHmacFinal(&context, digestRaw);
    
    return [NSData dataWithBytes:digestRaw length:digestLength];
}

- (NSData *)UA_hmacSHA256WithKey:(NSString *)key
{
    if (key == nil)
        return nil;
    
    CCHmacContext context;
    const char    *keyCString = [key cStringUsingEncoding:NSASCIIStringEncoding];
    
    CCHmacInit(&context, kCCHmacAlgSHA256, keyCString, strlen(keyCString));
    CCHmacUpdate(&context, [self bytes], [self length]);
    
    unsigned char digestRaw[CC_SHA256_DIGEST_LENGTH];
    NSInteger     digestLength = CC_SHA256_DIGEST_LENGTH;
    
    CCHmacFinal(&context, digestRaw);
    
    return [NSData dataWithBytes:digestRaw length:digestLength];
    
}

- (NSData *)UA_hmacSHA256WithDataKey:(NSData *)key
{
    CCHmacContext context;
    CCHmacInit(&context, kCCHmacAlgSHA256, [key bytes], [key length]);
    CCHmacUpdate(&context, [self bytes], [self length]);
    
    unsigned char digestRaw[CC_SHA256_DIGEST_LENGTH];
    NSInteger     digestLength = CC_SHA256_DIGEST_LENGTH;
    
    CCHmacFinal(&context, digestRaw);
    
    return [NSData dataWithBytes:digestRaw length:digestLength];
    
}
- (NSData *)UA_sha256
{
    const void *cString = [self bytes];
    unsigned char result[CC_SHA256_DIGEST_LENGTH];
    
    CC_SHA256(cString, (uint32_t)[self length], result);
    
    return [[NSData alloc] initWithBytes:result length:CC_SHA256_DIGEST_LENGTH];
}

- (NSString *)UA_hexString
{
    const unsigned char *dataBuffer = (const unsigned char *)[self bytes];
    
    if (!dataBuffer)
        return @"";
    
    NSUInteger          dataLength  = [self length];
    NSMutableString     *hexString  = [NSMutableString stringWithCapacity:(dataLength * 2)];
    
    for (int i = 0; i < dataLength; ++i)
        [hexString appendString:[NSString stringWithFormat:@"%02lx", (unsigned long)dataBuffer[i]]];
    
    return [NSString stringWithString:hexString];
}

@end
