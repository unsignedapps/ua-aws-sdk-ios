//
//  UAEC2InstanceStateChange.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStateChange.h"

@implementation UAEC2InstanceStateChange

@synthesize instanceID=_instanceID, currentState=_currentState, previousState=_previousState;

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
        @"currentState": @"ec2:currentState/ec2:name",
        @"previousState": @"ec2:previousState/ec2:name"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)currentStateQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
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

+ (NSValueTransformer *)previousStateQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
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

+ (NSValueTransformer *)currentStateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
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

+ (NSValueTransformer *)previousStateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
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

@end
