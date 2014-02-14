//
//  UAEC2CreateImageResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateImageResponse.h"

@implementation UAEC2CreateImageResponse

@synthesize imageID=_imageID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateImageResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"imageID": @"ec2:imageId"
    }];
    return [keyPaths copy];
}

@end
