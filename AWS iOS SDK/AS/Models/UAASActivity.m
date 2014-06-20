//
//  UAASActivity.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASActivity.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASActivityStatusWaitingForSpotInstanceRequestID), @(UAASActivityStatusWaitingForSpotInstanceID), @(UAASActivityStatusWaitingForInstanceID), @(UAASActivityStatusPreInService), @(UAASActivityStatusInProgress), @(UAASActivityStatusSuccessful), @(UAASActivityStatusFailed), @(UAASActivityStatusCancelled) ]
                                               stringValues:@[ @"WaitingForSpotInstanceRequestId", @"WaitingForSpotInstanceId", @"WaitingForInstanceId", @"PreInService", @"InProgress", @"Successful", @"Failed", @"Cancelled" ]
                                               unknownValue:@(UAASActivityStatusUnknown)];
}

+ (NSValueTransformer *)startTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)endTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusCodeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAASActivityStatusWaitingForSpotInstanceRequestID), @(UAASActivityStatusWaitingForSpotInstanceID), @(UAASActivityStatusWaitingForInstanceID), @(UAASActivityStatusPreInService), @(UAASActivityStatusInProgress), @(UAASActivityStatusSuccessful), @(UAASActivityStatusFailed), @(UAASActivityStatusCancelled) ]
                                               stringValues:@[ @"WaitingForSpotInstanceRequestId", @"WaitingForSpotInstanceId", @"WaitingForInstanceId", @"PreInService", @"InProgress", @"Successful", @"Failed", @"Cancelled" ]
                                               unknownValue:@(UAASActivityStatusUnknown)];
}

+ (NSValueTransformer *)progressXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end

#pragma clang diagnostic pop