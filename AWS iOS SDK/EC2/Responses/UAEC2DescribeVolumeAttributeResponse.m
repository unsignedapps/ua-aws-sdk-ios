//
//  UAEC2DescribeVolumeAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVolumeAttributeResponse.h"
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
        @"autoEnableIO": @"ec2:autoEnableIO/ec2:value",
        @"productCodes": @"ec2:productCodes/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2ProductCode *)productCodeAtIndex:(NSUInteger)index
{
    if (self.productCodes == nil || index >= ([self.productCodes count]-1))
        return nil;

    return [self.productCodes objectAtIndex:index];
}

+ (NSValueTransformer *)autoEnableIOXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

@end
