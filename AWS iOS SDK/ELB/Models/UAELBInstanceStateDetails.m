//
//  UAELBInstanceStateDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBInstanceStateDetails.h"

@implementation UAELBInstanceStateDetails

@synthesize instanceID=_instanceID, state=_state, reasonCode=_reasonCode, descriptionValue=_descriptionValue;

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
        @"instanceID": @"ElasticLoadBalancing:InstanceId",
        @"state": @"ElasticLoadBalancing:State",
        @"reasonCode": @"ElasticLoadBalancing:ReasonCode",
        @"descriptionValue": @"ElasticLoadBalancing:Description"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"InService"])
		    return @(UAELBInstanceStateInService);
		if ([value isEqualToString:@"OutOfService"])
		    return @(UAELBInstanceStateOutOfService);

		return @(UAELBInstanceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBInstanceState castValue = (UAELBInstanceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBInstanceStateInService:
			    return @"InService";
			case UAELBInstanceStateOutOfService:
			    return @"OutOfService";

			case UAELBInstanceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)reasonCodeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ELB"])
		    return @(UAELBInstanceStateReasonCodeELB);
		if ([value isEqualToString:@"Instance"])
		    return @(UAELBInstanceStateReasonCodeInstance);

		return @(UAELBInstanceStateReasonCodeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBInstanceStateReasonCode castValue = (UAELBInstanceStateReasonCode)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBInstanceStateReasonCodeELB:
			    return @"ELB";
			case UAELBInstanceStateReasonCodeInstance:
			    return @"Instance";

			case UAELBInstanceStateReasonCodeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAELBInstanceStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"InService"])
		    return @(UAELBInstanceStateInService);
		if ([value isEqualToString:@"OutOfService"])
		    return @(UAELBInstanceStateOutOfService);

		return @(UAELBInstanceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBInstanceState castValue = (UAELBInstanceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBInstanceStateInService:
			    return @"InService";
			case UAELBInstanceStateOutOfService:
			    return @"OutOfService";

			case UAELBInstanceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)reasonCodeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAELBInstanceStateReasonCodeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ELB"])
		    return @(UAELBInstanceStateReasonCodeELB);
		if ([value isEqualToString:@"Instance"])
		    return @(UAELBInstanceStateReasonCodeInstance);

		return @(UAELBInstanceStateReasonCodeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAELBInstanceStateReasonCode castValue = (UAELBInstanceStateReasonCode)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAELBInstanceStateReasonCodeELB:
			    return @"ELB";
			case UAELBInstanceStateReasonCodeInstance:
			    return @"Instance";

			case UAELBInstanceStateReasonCodeUnknown:
			default:
				return nil;
        }
    }];
}

@end
