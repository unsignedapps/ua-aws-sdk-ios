//
//  UAEC2InstanceStatus.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStatus.h"
#import "UAEC2InstanceStatusEvent.h"
#import "UAEC2InstanceStatusSummary.h"

@implementation UAEC2InstanceStatus

@synthesize instanceID=_instanceID, availabilityZone=_availabilityZone, events=_events, instanceState=_instanceState, systemStatus=_systemStatus, instanceStatus=_instanceStatus;

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
        @"instanceID": @"ec2:instanceId",
        @"availabilityZone": @"ec2:availabilityZone",
        @"events": @"ec2:eventsSet/ec2:item",
        @"instanceState": @"ec2:instanceState/ec2:name",
        @"systemStatus": @"ec2:systemStatus",
        @"instanceStatus": @"ec2:instanceStatus"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)eventsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceStatusEvent class]];
}

+ (NSValueTransformer *)instanceStateQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2InstanceStatePending);
		if ([value isEqualToString:@"running"])
		    return @(UAEC2InstanceStateRunning);
		if ([value isEqualToString:@"shutting-down"])
		    return @(UAEC2InstanceStateShuttingDown);
		if ([value isEqualToString:@"terminated"])
		    return @(UAEC2InstanceStateTerminated);
		if ([value isEqualToString:@"stopping"])
		    return @(UAEC2InstanceStateStopping);
		if ([value isEqualToString:@"stopped"])
		    return @(UAEC2InstanceStateStopped);

		return @(UAEC2InstanceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceState castValue = (UAEC2InstanceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatePending:
			    return @"pending";
			case UAEC2InstanceStateRunning:
			    return @"running";
			case UAEC2InstanceStateShuttingDown:
			    return @"shutting-down";
			case UAEC2InstanceStateTerminated:
			    return @"terminated";
			case UAEC2InstanceStateStopping:
			    return @"stopping";
			case UAEC2InstanceStateStopped:
			    return @"stopped";

			case UAEC2InstanceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)systemStatusQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2InstanceStatusSummary class]];
}

+ (NSValueTransformer *)instanceStatusQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2InstanceStatusSummary class]];
}

+ (NSValueTransformer *)eventsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceStatusEvent class]];
}

+ (NSValueTransformer *)instanceStateXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceStateUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2InstanceStatePending);
		if ([value isEqualToString:@"running"])
		    return @(UAEC2InstanceStateRunning);
		if ([value isEqualToString:@"shutting-down"])
		    return @(UAEC2InstanceStateShuttingDown);
		if ([value isEqualToString:@"terminated"])
		    return @(UAEC2InstanceStateTerminated);
		if ([value isEqualToString:@"stopping"])
		    return @(UAEC2InstanceStateStopping);
		if ([value isEqualToString:@"stopped"])
		    return @(UAEC2InstanceStateStopped);

		return @(UAEC2InstanceStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceState castValue = (UAEC2InstanceState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatePending:
			    return @"pending";
			case UAEC2InstanceStateRunning:
			    return @"running";
			case UAEC2InstanceStateShuttingDown:
			    return @"shutting-down";
			case UAEC2InstanceStateTerminated:
			    return @"terminated";
			case UAEC2InstanceStateStopping:
			    return @"stopping";
			case UAEC2InstanceStateStopped:
			    return @"stopped";

			case UAEC2InstanceStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)systemStatusXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2InstanceStatusSummary class]];
}

+ (NSValueTransformer *)instanceStatusXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2InstanceStatusSummary class]];
}

@end
