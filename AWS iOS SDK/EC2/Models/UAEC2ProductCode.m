//
//  UAEC2ProductCode.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ProductCode.h"

@implementation UAEC2ProductCode

@synthesize productCodeID=_productCodeID, productCodeType=_productCodeType;

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
        @"productCodeID": @"ec2:productCode",
        @"productCodeType": @"ec2:type"
    }];
    return [keyPaths copy];
}

@end
