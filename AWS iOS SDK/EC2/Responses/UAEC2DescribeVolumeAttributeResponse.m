//
//  UAEC2DescribeVolumeAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVolumeAttributeResponse.h"
#import "UAEC2AutoEnableIO.h"
#import "UAEC2ProductCode.h"

@implementation UAEC2DescribeVolumeAttributeResponse

@synthesize volumeID=_volumeID, autoEnableIO=_autoEnableIO, productCodes=_productCodes;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVolumeAttributeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumeID": @"ec2:volumeId",
        @"autoEnableIO": @"ec2:autoEnableIO",
        @"productCodes": @"ec2:productCodes/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)autoEnableIOXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2AutoEnableIO class]];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

@end
