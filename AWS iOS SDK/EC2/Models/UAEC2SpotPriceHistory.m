//
//  UAEC2SpotPriceHistory.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SpotPriceHistory.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2SpotPriceHistory

@synthesize instanceType=_instanceType, productDescription=_productDescription, spotPrice=_spotPrice, timestamp=_timestamp, availabilityZone=_availabilityZone;

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
        @"instanceType": @"ec2:instanceType",
        @"productDescription": @"ec2:productDescription",
        @"spotPrice": @"ec2:spotPrice",
        @"timestamp": @"ec2:timestamp",
        @"availabilityZone": @"ec2:availabilityZone"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)productDescriptionQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotRequestProductDescriptionLinuxUNIX), @(UAEC2SpotRequestProductDescriptionLinuxUNIXAmazonVPC), @(UAEC2SpotRequestProductDescriptionSUSELinux), @(UAEC2SpotRequestProductDescriptionSUSELinuxAmazonVPC), @(UAEC2SpotRequestProductDescriptionWindows), @(UAEC2SpotRequestProductDescriptionWindowsAmazonVPC) ]
                                               stringValues:@[ @"Linux/UNIX", @"Linux/UNIX (Amazon VPC)", @"SUSE Linux", @"SUSE Linux (Amazon VPC)", @"Windows", @"Windows (Amazon VPC)" ]
                                               unknownValue:@(UAEC2SpotRequestProductDescriptionUnknown)];
}

+ (NSValueTransformer *)timestampQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)productDescriptionXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotRequestProductDescriptionLinuxUNIX), @(UAEC2SpotRequestProductDescriptionLinuxUNIXAmazonVPC), @(UAEC2SpotRequestProductDescriptionSUSELinux), @(UAEC2SpotRequestProductDescriptionSUSELinuxAmazonVPC), @(UAEC2SpotRequestProductDescriptionWindows), @(UAEC2SpotRequestProductDescriptionWindowsAmazonVPC) ]
                                               stringValues:@[ @"Linux/UNIX", @"Linux/UNIX (Amazon VPC)", @"SUSE Linux", @"SUSE Linux (Amazon VPC)", @"Windows", @"Windows (Amazon VPC)" ]
                                               unknownValue:@(UAEC2SpotRequestProductDescriptionUnknown)];
}

+ (NSValueTransformer *)spotPriceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)timestampXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop