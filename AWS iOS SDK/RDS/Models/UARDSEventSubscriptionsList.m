//
//  UARDSEventSubscriptionsList.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSEventSubscriptionsList.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSEventSubscriptionsList

@synthesize customerAwsID=_customerAwsID, custSubscriptionID=_custSubscriptionID, snsTopicARN=_snsTopicARN, status=_status, subscriptionCreationTime=_subscriptionCreationTime, sourceType=_sourceType, sourceIdsList=_sourceIdsList, eventCategoriesList=_eventCategoriesList, enabled=_enabled;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(sourceIdsListAtIndex:) propertyName:@"sourceIdsList"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventCategoriesListAtIndex:) propertyName:@"eventCategoriesList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSourceIdsList:) propertyName:@"sourceIdsList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEventCategoriesList:) propertyName:@"eventCategoriesList"];
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
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"customerAwsID": @"Rds:CustomerAwsId",
        @"custSubscriptionID": @"Rds:CustSubscriptionId",
        @"snsTopicARN": @"Rds:SnsTopicArn",
        @"status": @"Rds:Status",
        @"subscriptionCreationTime": @"Rds:SubscriptionCreationTime",
        @"sourceType": @"Rds:SourceType",
        @"sourceIdsList": @"Rds:SourceIdsList/Rds:SourceId",
        @"eventCategoriesList": @"Rds:EventCategoriesList/Rds:EventCategory",
        @"enabled": @"Rds:Enabled"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)subscriptionCreationTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)sourceTypeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSSourceTypeDbInstance), @(UARDSSourceTypeDbParameterGroup), @(UARDSSourceTypeDbSecurityGroup), @(UARDSSourceTypeDbSnapshot) ]
                                               stringValues:@[ @"db-instance", @"db-parameter-group", @"db-security-group", @"db-snapshot" ]
                                               unknownValue:@(UARDSSourceTypeUnknown)];
}

+ (NSValueTransformer *)subscriptionCreationTimeXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)sourceTypeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSSourceTypeDbInstance), @(UARDSSourceTypeDbParameterGroup), @(UARDSSourceTypeDbSecurityGroup), @(UARDSSourceTypeDbSnapshot) ]
                                               stringValues:@[ @"db-instance", @"db-parameter-group", @"db-security-group", @"db-snapshot" ]
                                               unknownValue:@(UARDSSourceTypeUnknown)];
}

+ (NSValueTransformer *)sourceIdsListXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)eventCategoriesListXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

+ (NSValueTransformer *)enabledXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop