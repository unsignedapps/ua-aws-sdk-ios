//
//  UAASActivity.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASActivity.h"

@implementation UAASActivity

@synthesize activityID=_activityID, autoScalingGroupName=_autoScalingGroupName, descriptionValue=_descriptionValue, cause=_cause, startTime=_startTime, endTime=_endTime, statusCode=_statusCode, statusMessage=_statusMessage, progress=_progress, details=_details;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"activityID": @"AutoScaling:ActivityId",
        @"autoScalingGroupName": @"AutoScaling:AutoScalingGroupName",
        @"descriptionValue": @"AutoScaling:Description",
        @"cause": @"AutoScaling:Cause",
        @"startTime": @"AutoScaling:StartTime",
        @"endTime": @"AutoScaling:EndTime",
        @"statusCode": @"AutoScaling:StatusCode",
        @"statusMessage": @"AutoScaling:StatusMessage",
        @"progress": @"AutoScaling:Progress",
        @"details": @"AutoScaling:Details"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)startTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusCodeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"WaitingForSpotInstanceRequestId"])
		    return @(UAASActivityStatusWaitingForSpotInstanceRequestID);
		if ([value isEqualToString:@"WaitingForSpotInstanceId"])
		    return @(UAASActivityStatusWaitingForSpotInstanceID);
		if ([value isEqualToString:@"WaitingForInstanceId"])
		    return @(UAASActivityStatusWaitingForInstanceID);
		if ([value isEqualToString:@"PreInService"])
		    return @(UAASActivityStatusPreInService);
		if ([value isEqualToString:@"InProgress"])
		    return @(UAASActivityStatusInProgress);
		if ([value isEqualToString:@"Successful"])
		    return @(UAASActivityStatusSuccessful);
		if ([value isEqualToString:@"Failed"])
		    return @(UAASActivityStatusFailed);
		if ([value isEqualToString:@"Cancelled"])
		    return @(UAASActivityStatusCancelled);

		return @(UAASActivityStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASActivityStatus castValue = (UAASActivityStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASActivityStatusWaitingForSpotInstanceRequestID:
			    return @"WaitingForSpotInstanceRequestId";
			case UAASActivityStatusWaitingForSpotInstanceID:
			    return @"WaitingForSpotInstanceId";
			case UAASActivityStatusWaitingForInstanceID:
			    return @"WaitingForInstanceId";
			case UAASActivityStatusPreInService:
			    return @"PreInService";
			case UAASActivityStatusInProgress:
			    return @"InProgress";
			case UAASActivityStatusSuccessful:
			    return @"Successful";
			case UAASActivityStatusFailed:
			    return @"Failed";
			case UAASActivityStatusCancelled:
			    return @"Cancelled";

			case UAASActivityStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)startTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusCodeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAASActivityStatusUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"WaitingForSpotInstanceRequestId"])
		    return @(UAASActivityStatusWaitingForSpotInstanceRequestID);
		if ([value isEqualToString:@"WaitingForSpotInstanceId"])
		    return @(UAASActivityStatusWaitingForSpotInstanceID);
		if ([value isEqualToString:@"WaitingForInstanceId"])
		    return @(UAASActivityStatusWaitingForInstanceID);
		if ([value isEqualToString:@"PreInService"])
		    return @(UAASActivityStatusPreInService);
		if ([value isEqualToString:@"InProgress"])
		    return @(UAASActivityStatusInProgress);
		if ([value isEqualToString:@"Successful"])
		    return @(UAASActivityStatusSuccessful);
		if ([value isEqualToString:@"Failed"])
		    return @(UAASActivityStatusFailed);
		if ([value isEqualToString:@"Cancelled"])
		    return @(UAASActivityStatusCancelled);

		return @(UAASActivityStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAASActivityStatus castValue = (UAASActivityStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAASActivityStatusWaitingForSpotInstanceRequestID:
			    return @"WaitingForSpotInstanceRequestId";
			case UAASActivityStatusWaitingForSpotInstanceID:
			    return @"WaitingForSpotInstanceId";
			case UAASActivityStatusWaitingForInstanceID:
			    return @"WaitingForInstanceId";
			case UAASActivityStatusPreInService:
			    return @"PreInService";
			case UAASActivityStatusInProgress:
			    return @"InProgress";
			case UAASActivityStatusSuccessful:
			    return @"Successful";
			case UAASActivityStatusFailed:
			    return @"Failed";
			case UAASActivityStatusCancelled:
			    return @"Cancelled";

			case UAASActivityStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)progressXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
