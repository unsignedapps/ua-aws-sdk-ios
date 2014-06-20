//
//  UAEC2AllocateAddressResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AllocateAddressResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AllocateAddressResponse

@synthesize publicIP=_publicIP, domain=_domain, allocationID=_allocationID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:AllocateAddressResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"publicIP": @"ec2:publicIp",
        @"domain": @"ec2:domain",
        @"allocationID": @"ec2:allocationId"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)domainXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2DomainStandard), @(UAEC2DomainVPC) ]
                                               stringValues:@[ @"standard", @"vpc" ]
                                               unknownValue:@(UAEC2DomainUnknown)];
}

@end

#pragma clang diagnostic pop