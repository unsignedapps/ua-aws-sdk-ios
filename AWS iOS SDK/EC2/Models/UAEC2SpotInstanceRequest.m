//
//  UAEC2SpotInstanceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2SpotInstanceRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2SpotInstanceStateFault.h"
#import "UAEC2SpotInstanceStatus.h"
#import "UAEC2LaunchSpecification.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2SpotInstanceRequest

@synthesize spotInstanceRequestID=_spotInstanceRequestID, spotPrice=_spotPrice, type=_type, state=_state, fault=_fault, status=_status, validFrom=_validFrom, validUntil=_validUntil, launchGroup=_launchGroup, availabilityZoneGroup=_availabilityZoneGroup, launchSpecification=_launchSpecification, instanceID=_instanceID, createTime=_createTime, productDescription=_productDescription, tags=_tags, launchedAvailabilityZone=_launchedAvailabilityZone;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotInstanceRequestTypeOneTime), @(UAEC2SpotInstanceRequestTypePersistent) ]
                                               stringValues:@[ @"one-time", @"persistent" ]
                                               unknownValue:@(UAEC2SpotInstanceRequestTypeUnknown)];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotInstanceRequestStateOpen), @(UAEC2SpotInstanceRequestStateActive), @(UAEC2SpotInstanceRequestStateClosed), @(UAEC2SpotInstanceRequestStateCancelled), @(UAEC2SpotInstanceRequestStateFailed) ]
                                               stringValues:@[ @"open", @"active", @"closed", @"cancelled", @"failed" ]
                                               unknownValue:@(UAEC2SpotInstanceRequestStateUnknown)];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotInstanceRequestTypeOneTime), @(UAEC2SpotInstanceRequestTypePersistent) ]
                                               stringValues:@[ @"one-time", @"persistent" ]
                                               unknownValue:@(UAEC2SpotInstanceRequestTypeUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2SpotInstanceRequestStateOpen), @(UAEC2SpotInstanceRequestStateActive), @(UAEC2SpotInstanceRequestStateClosed), @(UAEC2SpotInstanceRequestStateCancelled), @(UAEC2SpotInstanceRequestStateFailed) ]
                                               stringValues:@[ @"open", @"active", @"closed", @"cancelled", @"failed" ]
                                               unknownValue:@(UAEC2SpotInstanceRequestStateUnknown)];
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

#pragma clang diagnostic pop