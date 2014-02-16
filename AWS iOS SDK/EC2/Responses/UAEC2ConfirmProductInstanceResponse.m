//
//  UAEC2ConfirmProductInstanceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ConfirmProductInstanceResponse.h"

@implementation UAEC2ConfirmProductInstanceResponse

@synthesize ownerID=_ownerID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:ConfirmProductInstanceResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"ownerID": @"ec2:ownerId"
    }];
    return [keyPaths copy];
}

@end
