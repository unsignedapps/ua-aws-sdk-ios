//
//  UAEC2SpotInstanceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SpotInstanceRequest.h"
#import "UAEC2SpotInstanceStateFault.h"
#import "UAEC2SpotInstanceStatus.h"
#import "UAEC2LaunchSpecification.h"
#import "UAEC2Tag.h"

@implementation UAEC2SpotInstanceRequest

@synthesize spotInstanceRequestID=_spotInstanceRequestID, spotPrice=_spotPrice, type=_type, state=_state, fault=_fault, status=_status, validFrom=_validFrom, validUntil=_validUntil, launchGroup=_launchGroup, availabilityZoneGroup=_availabilityZoneGroup, launchSpecification=_launchSpecification, instanceID=_instanceID, createTime=_createTime, productDescription=_productDescription, tags=_tags, launchedAvailabilityZone=_launchedAvailabilityZone;

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
        @"spotInstanceRequestID": @"ec2:spotInstanceRequestId",
        @"spotPrice": @"ec2:spotPrice",
        @"type": @"ec2:type",
        @"state": @"ec2:state",
        @"fault": @"ec2:fault",
        @"status": @"ec2:status",
        @"validFrom": @"ec2:validFrom",
        @"validUntil": @"ec2:validUntil",
        @"launchGroup": @"ec2:launchGroup",
        @"availabilityZoneGroup": @"ec2:availabilityZoneGroup",
        @"launchSpecification": @"ec2:launchSpecification",
        @"instanceID": @"ec2:instanceId",
        @"createTime": @"ec2:createTime",
        @"productDescription": @"ec2:productDescription",
        @"tags": @"ec2:tagSet/ec2:item",
        @"launchedAvailabilityZone": @"ec2:launchedAvailabilityZone"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)typeQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"one-time"])
		    return @(UAEC2SpotInstanceRequestTypeOneTime);
		if ([value isEqualToString:@"persistent"])
		    return @(UAEC2SpotInstanceRequestTypePersistent);

		return @(UAEC2SpotInstanceRequestTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2SpotInstanceRequestType castValue = (UAEC2SpotInstanceRequestType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2SpotInstanceRequestTypeOneTime:
			    return @"one-time";
			case UAEC2SpotInstanceRequestTypePersistent:
			    return @"persistent";

			case UAEC2SpotInstanceRequestTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"open"])
		    return @(UAEC2SpotInstanceRequestStateOpen);
		if ([value isEqualToString:@"active"])
		    return @(UAEC2SpotInstanceRequestStateActive);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2SpotInstanceRequestStateClosed);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2SpotInstanceRequestStateCancelled);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2SpotInstanceRequestStateFailed);

		return @(UAEC2SpotInstanceRequestStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2SpotInstanceRequestState castValue = (UAEC2SpotInstanceRequestState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2SpotInstanceRequestStateOpen:
			    return @"open";
			case UAEC2SpotInstanceRequestStateActive:
			    return @"active";
			case UAEC2SpotInstanceRequestStateClosed:
			    return @"closed";
			case UAEC2SpotInstanceRequestStateCancelled:
			    return @"cancelled";
			case UAEC2SpotInstanceRequestStateFailed:
			    return @"failed";

			case UAEC2SpotInstanceRequestStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)faultQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SpotInstanceStateFault class]];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2SpotInstanceStatus class]];
}

+ (NSValueTransformer *)validFromQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)validUntilQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)launchSpecificationQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2LaunchSpecification class]];
}

+ (NSValueTransformer *)createTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)spotPriceXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)typeXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2SpotInstanceRequestTypeUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"one-time"])
		    return @(UAEC2SpotInstanceRequestTypeOneTime);
		if ([value isEqualToString:@"persistent"])
		    return @(UAEC2SpotInstanceRequestTypePersistent);

		return @(UAEC2SpotInstanceRequestTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2SpotInstanceRequestType castValue = (UAEC2SpotInstanceRequestType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2SpotInstanceRequestTypeOneTime:
			    return @"one-time";
			case UAEC2SpotInstanceRequestTypePersistent:
			    return @"persistent";

			case UAEC2SpotInstanceRequestTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2SpotInstanceRequestStateUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"open"])
		    return @(UAEC2SpotInstanceRequestStateOpen);
		if ([value isEqualToString:@"active"])
		    return @(UAEC2SpotInstanceRequestStateActive);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2SpotInstanceRequestStateClosed);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2SpotInstanceRequestStateCancelled);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2SpotInstanceRequestStateFailed);

		return @(UAEC2SpotInstanceRequestStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2SpotInstanceRequestState castValue = (UAEC2SpotInstanceRequestState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2SpotInstanceRequestStateOpen:
			    return @"open";
			case UAEC2SpotInstanceRequestStateActive:
			    return @"active";
			case UAEC2SpotInstanceRequestStateClosed:
			    return @"closed";
			case UAEC2SpotInstanceRequestStateCancelled:
			    return @"cancelled";
			case UAEC2SpotInstanceRequestStateFailed:
			    return @"failed";

			case UAEC2SpotInstanceRequestStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)faultXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2SpotInstanceStateFault class]];
}

+ (NSValueTransformer *)statusXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2SpotInstanceStatus class]];
}

+ (NSValueTransformer *)validFromXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)validUntilXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)launchSpecificationXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2LaunchSpecification class]];
}

+ (NSValueTransformer *)createTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
