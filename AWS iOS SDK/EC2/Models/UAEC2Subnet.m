//
//  UAEC2Subnet.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Subnet.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2Subnet

@synthesize subnetID=_subnetID, state=_state, vpcID=_vpcID, cidrBlock=_cidrBlock, availableIPAddressCount=_availableIPAddressCount, availabilityZone=_availabilityZone, defaultForAz=_defaultForAz, mapPublicIPOnLaunch=_mapPublicIPOnLaunch, tags=_tags;

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
        @"subnetID": @"ec2:subnetId",
        @"state": @"ec2:state",
        @"vpcID": @"ec2:vpcId",
        @"cidrBlock": @"ec2:cidrBlock",
        @"availableIPAddressCount": @"ec2:availableIpAddressCount",
        @"availabilityZone": @"ec2:availabilityZone",
        @"defaultForAz": @"ec2:defaultForAz",
        @"mapPublicIPOnLaunch": @"ec2:mapPublicIpOnLaunch",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SubnetStatePending), @(UAEC2SubnetStateAvailable) ]
                                               stringValues:@[ @"pending", @"available" ]
                                               unknownValue:@(UAEC2SubnetStateUnknown)];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SubnetStatePending), @(UAEC2SubnetStateAvailable) ]
                                               stringValues:@[ @"pending", @"available" ]
                                               unknownValue:@(UAEC2SubnetStateUnknown)];
}

+ (NSValueTransformer *)availableIPAddressCountXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)defaultForAzXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)mapPublicIPOnLaunchXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end

#pragma clang diagnostic pop