//
//  UAAWSCredentials.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "UAAWSCredentials.h"

@implementation UAAWSCredentials

@synthesize accessKey=_accessKey, secretKey=_secretKey, securityToken=_securityToken;

- (id)initWithAccessKey:(NSString *)accessKey secretKey:(NSString *)secretKey
{
    if ((self = [self init]))
    {
        [self setAccessKey:accessKey];
        [self setSecretKey:secretKey];
    }
    return self;
}

- (id)initWithAccessKey:(NSString *)accessKey secretKey:(NSString *)secretKey securityToken:(NSString *)securityToken
{
    if (self = [self initWithAccessKey:accessKey secretKey:secretKey])
    {
        [self setSecurityToken:securityToken];
    }
    return self;
}

#pragma mark - UAMTLQuerySerializing Methods

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return
    @{
        @"accessKey": @"",
        @"secretKey": @"",
        @"securityToken": @""
    };
}

@end
