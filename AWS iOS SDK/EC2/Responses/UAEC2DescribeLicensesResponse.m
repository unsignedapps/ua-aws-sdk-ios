//
//  UAEC2DescribeLicensesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeLicensesResponse.h"
#import "UAEC2License.h"

@implementation UAEC2DescribeLicensesResponse

@synthesize licenses=_licenses;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeLicensesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"licenses": @"ec2:licenseSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)licensesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2License class]];
}

@end
