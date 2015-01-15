//
//  UAEC2InstanceStatus.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStatus.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InstanceStatusEvent.h"
#import "UAEC2InstanceStatusSummary.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2InstanceStatus

@synthesize instanceID=_instanceID, availabilityZone=_availabilityZone, events=_events, instanceState=_instanceState, systemStatus=_systemStatus, instanceStatus=_instanceStatus;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventAtIndex:) propertyName:@"events"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEvent:) propertyName:@"events"];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatePending), @(UAEC2InstanceStateRunning), @(UAEC2InstanceStateShuttingDown), @(UAEC2InstanceStateTerminated), @(UAEC2InstanceStateStopping), @(UAEC2InstanceStateStopped) ]
                                               stringValues:@[ @"pending", @"running", @"shutting-down", @"terminated", @"stopping", @"stopped" ]
                                               unknownValue:@(UAEC2InstanceStateUnknown)];
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

#pragma clang diagnostic pop