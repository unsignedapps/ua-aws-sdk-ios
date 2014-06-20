//
//  UAEC2BundleTask.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2BundleTask.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2BundleInstanceStorage.h"
#import "UAEC2BundleTaskError.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2BundleTaskStatePending), @(UAEC2BundleTaskStateWaitingForShutdown), @(UAEC2BundleTaskStateBundling), @(UAEC2BundleTaskStateStoring), @(UAEC2BundleTaskStateCancelling), @(UAEC2BundleTaskStateComplete), @(UAEC2BundleTaskStateFailed) ]
                                               stringValues:@[ @"pending", @"waiting-for-shutdown", @"bundling", @"storing", @"cancelling", @"complete", @"failed" ]
                                               unknownValue:@(UAEC2BundleTaskStateUnknown)];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2BundleTaskStatePending), @(UAEC2BundleTaskStateWaitingForShutdown), @(UAEC2BundleTaskStateBundling), @(UAEC2BundleTaskStateStoring), @(UAEC2BundleTaskStateCancelling), @(UAEC2BundleTaskStateComplete), @(UAEC2BundleTaskStateFailed) ]
                                               stringValues:@[ @"pending", @"waiting-for-shutdown", @"bundling", @"storing", @"cancelling", @"complete", @"failed" ]
                                               unknownValue:@(UAEC2BundleTaskStateUnknown)];
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

#pragma clang diagnostic pop