//
//  UAEC2BundleTask.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BundleTask.h"
#import "UAEC2BundleInstanceStorage.h"
#import "UAEC2BundleTaskError.h"

@implementation UAEC2BundleTask

@synthesize instanceID=_instanceID, bundleID=_bundleID, state=_state, startTime=_startTime, updateTime=_updateTime, storage=_storage, progress=_progress, bundleTaskError=_bundleTaskError;

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
        @"bundleID": @"ec2:bundleId",
        @"state": @"ec2:state",
        @"startTime": @"ec2:startTime",
        @"updateTime": @"ec2:updateTime",
        @"storage": @"ec2:storage",
        @"progress": @"ec2:progress",
        @"bundleTaskError": @"ec2:error"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2BundleTaskStatePending);
		if ([value isEqualToString:@"waiting-for-shutdown"])
		    return @(UAEC2BundleTaskStateWaitingForShutdown);
		if ([value isEqualToString:@"bundling"])
		    return @(UAEC2BundleTaskStateBundling);
		if ([value isEqualToString:@"storing"])
		    return @(UAEC2BundleTaskStateStoring);
		if ([value isEqualToString:@"cancelling"])
		    return @(UAEC2BundleTaskStateCancelling);
		if ([value isEqualToString:@"complete"])
		    return @(UAEC2BundleTaskStateComplete);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2BundleTaskStateFailed);

		return @(UAEC2BundleTaskStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2BundleTaskState castValue = (UAEC2BundleTaskState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2BundleTaskStatePending:
			    return @"pending";
			case UAEC2BundleTaskStateWaitingForShutdown:
			    return @"waiting-for-shutdown";
			case UAEC2BundleTaskStateBundling:
			    return @"bundling";
			case UAEC2BundleTaskStateStoring:
			    return @"storing";
			case UAEC2BundleTaskStateCancelling:
			    return @"cancelling";
			case UAEC2BundleTaskStateComplete:
			    return @"complete";
			case UAEC2BundleTaskStateFailed:
			    return @"failed";

			case UAEC2BundleTaskStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)storageQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2BundleInstanceStorage class]];
}

+ (NSValueTransformer *)bundleTaskErrorQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2BundleTaskError class]];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2BundleTaskStateUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"pending"])
		    return @(UAEC2BundleTaskStatePending);
		if ([value isEqualToString:@"waiting-for-shutdown"])
		    return @(UAEC2BundleTaskStateWaitingForShutdown);
		if ([value isEqualToString:@"bundling"])
		    return @(UAEC2BundleTaskStateBundling);
		if ([value isEqualToString:@"storing"])
		    return @(UAEC2BundleTaskStateStoring);
		if ([value isEqualToString:@"cancelling"])
		    return @(UAEC2BundleTaskStateCancelling);
		if ([value isEqualToString:@"complete"])
		    return @(UAEC2BundleTaskStateComplete);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2BundleTaskStateFailed);

		return @(UAEC2BundleTaskStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2BundleTaskState castValue = (UAEC2BundleTaskState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2BundleTaskStatePending:
			    return @"pending";
			case UAEC2BundleTaskStateWaitingForShutdown:
			    return @"waiting-for-shutdown";
			case UAEC2BundleTaskStateBundling:
			    return @"bundling";
			case UAEC2BundleTaskStateStoring:
			    return @"storing";
			case UAEC2BundleTaskStateCancelling:
			    return @"cancelling";
			case UAEC2BundleTaskStateComplete:
			    return @"complete";
			case UAEC2BundleTaskStateFailed:
			    return @"failed";

			case UAEC2BundleTaskStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)startTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)storageXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2BundleInstanceStorage class]];
}

+ (NSValueTransformer *)bundleTaskErrorXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2BundleTaskError class]];
}

@end
