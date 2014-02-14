//
//  UAEC2CreateVPCResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVPCResponse.h"
#import "UAEC2VPC.h"

@implementation UAEC2CreateVPCResponse

@synthesize vpc=_vpc;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CreateVpcResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"vpc": @"ec2:vpc"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)vpcXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2VPC class]];
}

@end
