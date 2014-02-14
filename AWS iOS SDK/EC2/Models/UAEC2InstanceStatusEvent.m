//
//  UAEC2InstanceStatusEvent.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStatusEvent.h"

@implementation UAEC2InstanceStatusEvent

@synthesize code=_code, descriptionValue=_descriptionValue, notBefore=_notBefore, notAfter=_notAfter;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"code": @"ec2:code",
        @"descriptionValue": @"ec2:description",
        @"notBefore": @"ec2:notBefore",
        @"notAfter": @"ec2:notAfter"
    }];
    return [keyPaths copy];
}

@end
