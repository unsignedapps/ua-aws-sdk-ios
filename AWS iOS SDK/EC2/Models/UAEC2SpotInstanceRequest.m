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

+ (NSValueTransformer *)faultQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2SpotInstanceStateFault class]];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2SpotInstanceStatus class]];
}

+ (NSValueTransformer *)launchSpecificationQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2LaunchSpecification class]];
}

+ (NSValueTransformer *)createTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)faultXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2SpotInstanceStateFault class]];
}

+ (NSValueTransformer *)statusXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2SpotInstanceStatus class]];
}

+ (NSValueTransformer *)launchSpecificationXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2LaunchSpecification class]];
}

+ (NSValueTransformer *)createTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
