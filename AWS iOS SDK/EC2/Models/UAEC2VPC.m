//
//  UAEC2VPC.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPC.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VPC

@synthesize vpcID=_vpcID, state=_state, cidrBlock=_cidrBlock, dhcpOptionsID=_dhcpOptionsID, tags=_tags, instanceTenancy=_instanceTenancy, isDefault=_isDefault;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
	}
	return self;
}

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
        @"vpcID": @"ec2:vpcId",
        @"state": @"ec2:state",
        @"cidrBlock": @"ec2:cidrBlock",
        @"dhcpOptionsID": @"ec2:dhcpOptionsId",
        @"tags": @"ec2:tagSet/ec2:item",
        @"instanceTenancy": @"ec2:instanceTenancy",
        @"isDefault": @"ec2:isDefault"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VPCStatePending), @(UAEC2VPCStateAvailable) ]
                                               stringValues:@[ @"pending", @"available" ]
                                               unknownValue:@(UAEC2VPCStateUnknown)];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)instanceTenancyQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceTenancyDefault), @(UAEC2InstanceTenancyDedicated) ]
                                               stringValues:@[ @"default", @"dedicated" ]
                                               unknownValue:@(UAEC2InstanceTenancyUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VPCStatePending), @(UAEC2VPCStateAvailable) ]
                                               stringValues:@[ @"pending", @"available" ]
                                               unknownValue:@(UAEC2VPCStateUnknown)];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)instanceTenancyXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceTenancyDefault), @(UAEC2InstanceTenancyDedicated) ]
                                               stringValues:@[ @"default", @"dedicated" ]
                                               unknownValue:@(UAEC2InstanceTenancyUnknown)];
}

+ (NSValueTransformer *)isDefaultXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop