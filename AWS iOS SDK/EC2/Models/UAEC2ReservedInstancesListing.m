//
//  UAEC2ReservedInstancesListing.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesListing.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InstanceCount.h"
#import "UAEC2PriceSchedule.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ReservedInstancesListing

@synthesize reservedInstancesListingID=_reservedInstancesListingID, reservedInstancesID=_reservedInstancesID, createDate=_createDate, updateDate=_updateDate, status=_status, statusMessage=_statusMessage, instanceCounts=_instanceCounts, priceSchedules=_priceSchedules, tags=_tags, clientToken=_clientToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceCountAtIndex:) propertyName:@"instanceCounts"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(priceScheduleAtIndex:) propertyName:@"priceSchedules"];
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
        @"reservedInstancesListingID": @"ec2:reservedInstancesListingId",
        @"reservedInstancesID": @"ec2:reservedInstancesId",
        @"createDate": @"ec2:createDate",
        @"updateDate": @"ec2:updateDate",
        @"status": @"ec2:status",
        @"statusMessage": @"ec2:statusMessage",
        @"instanceCounts": @"ec2:instanceCounts/ec2:item",
        @"priceSchedules": @"ec2:priceSchedules/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item",
        @"clientToken": @"ec2:clientToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstancesListingStateActive), @(UAEC2ReservedInstancesListingStatePending), @(UAEC2ReservedInstancesListingStateCancelled), @(UAEC2ReservedInstancesListingStateClosed) ]
                                               stringValues:@[ @"active", @"pending", @"cancelled", @"closed" ]
                                               unknownValue:@(UAEC2ReservedInstancesListingStateUnknown)];
}

+ (NSValueTransformer *)instanceCountsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceCount class]];
}

+ (NSValueTransformer *)priceSchedulesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2PriceSchedule class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2ReservedInstancesListingStateActive), @(UAEC2ReservedInstancesListingStatePending), @(UAEC2ReservedInstancesListingStateCancelled), @(UAEC2ReservedInstancesListingStateClosed) ]
                                               stringValues:@[ @"active", @"pending", @"cancelled", @"closed" ]
                                               unknownValue:@(UAEC2ReservedInstancesListingStateUnknown)];
}

+ (NSValueTransformer *)instanceCountsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceCount class]];
}

+ (NSValueTransformer *)priceSchedulesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2PriceSchedule class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end

#pragma clang diagnostic pop