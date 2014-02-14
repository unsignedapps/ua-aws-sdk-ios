//
//  UAEC2AttachNetworkInterfaceResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AttachNetworkInterfaceResponse.h"

@implementation UAEC2AttachNetworkInterfaceResponse

@synthesize attachmentID=_attachmentID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AttachNetworkInterfaceResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attachmentID": @"ec2:attachmentId"
    }];
    return [keyPaths copy];
}

@end
