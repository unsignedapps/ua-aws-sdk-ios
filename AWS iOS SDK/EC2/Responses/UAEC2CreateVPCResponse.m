//
//  UAEC2CreateVPCResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateVPCResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VPC.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2VPC class]];
}

@end

#pragma clang diagnostic pop