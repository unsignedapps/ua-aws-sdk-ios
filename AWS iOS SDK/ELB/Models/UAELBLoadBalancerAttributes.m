//
//  UAELBLoadBalancerAttributes.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBLoadBalancerAttributes.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBAccessLog.h"
#import "UAELBConnectionDraining.h"
#import "UAELBConnectionSettings.h"
#import "UAELBAdditionalAttribute.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBLoadBalancerAttributes

@synthesize crossZoneLoadBalancing=_crossZoneLoadBalancing, accessLog=_accessLog, connectionDraining=_connectionDraining, connectionSettings=_connectionSettings, additionalAttributes=_additionalAttributes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(additionalAttributeAtIndex:) propertyName:@"additionalAttributes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAdditionalAttribute:) propertyName:@"additionalAttributes"];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"crossZoneLoadBalancing": @"CrossZoneLoadBalancing.Enabled",
        @"accessLog": @"AccessLog",
        @"connectionDraining": @"ConnectionDraining",
        @"connectionSettings": @"ConnectionSettings",
        @"additionalAttributes": @"AdditionalAttributes.Member"
    }];
    return [keyPaths copy];
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"crossZoneLoadBalancing": @"ElasticLoadBalancing:CrossZoneLoadBalancing/ElasticLoadBalancing:Enabled",
        @"accessLog": @"ElasticLoadBalancing:AccessLog",
        @"connectionDraining": @"ElasticLoadBalancing:ConnectionDraining",
        @"connectionSettings": @"ElasticLoadBalancing:ConnectionSettings",
        @"additionalAttributes": @"ElasticLoadBalancing:AdditionalAttributes.member/ElasticLoadBalancing:AdditionalAttributes"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accessLogQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBAccessLog class]];
}

+ (NSValueTransformer *)connectionDrainingQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBConnectionDraining class]];
}

+ (NSValueTransformer *)connectionSettingsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBConnectionSettings class]];
}

+ (NSValueTransformer *)additionalAttributesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAELBAdditionalAttribute class]];
}

+ (NSValueTransformer *)crossZoneLoadBalancingXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)accessLogXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBAccessLog class]];
}

+ (NSValueTransformer *)connectionDrainingXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBConnectionDraining class]];
}

+ (NSValueTransformer *)connectionSettingsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBConnectionSettings class]];
}

+ (NSValueTransformer *)additionalAttributesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBAdditionalAttribute class]];
}

@end

#pragma clang diagnostic pop