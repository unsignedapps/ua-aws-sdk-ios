//
//  UAEC2CopyImageResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CopyImageResponse.h"

@implementation UAEC2CopyImageResponse

@synthesize imageID=_imageID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CopyImageResponse/";
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
