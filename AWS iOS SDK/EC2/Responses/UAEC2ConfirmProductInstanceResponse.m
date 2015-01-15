//
//  UAEC2ConfirmProductInstanceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ConfirmProductInstanceResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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

#pragma clang diagnostic pop