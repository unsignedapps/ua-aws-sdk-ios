//
//  UACWAlarmHistoryItem.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWAlarmHistoryItem.h"

@implementation UACWAlarmHistoryItem

@synthesize alarmName=_alarmName, timestamp=_timestamp, historyItemType=_historyItemType, historySummary=_historySummary, historyData=_historyData;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"alarmName": @"cloudwatch:AlarmName",
        @"timestamp": @"cloudwatch:Timestamp",
        @"historyItemType": @"cloudwatch:HistoryItemType",
        @"historySummary": @"cloudwatch:HistorySummary",
        @"historyData": @"cloudwatch:HistoryData"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)timestampQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)historyItemTypeQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ConfigurationUpdate"])
		    return @(UACWAlarmHistoryItemTypeConfigurationUpdate);
		if ([value isEqualToString:@"StateUpdate"])
		    return @(UACWAlarmHistoryItemTypeStateUpdate);
		if ([value isEqualToString:@"Action"])
		    return @(UACWAlarmHistoryItemTypeAction);

		return @(UACWAlarmHistoryItemTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWAlarmHistoryItemType castValue = (UACWAlarmHistoryItemType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWAlarmHistoryItemTypeConfigurationUpdate:
			    return @"ConfigurationUpdate";
			case UACWAlarmHistoryItemTypeStateUpdate:
			    return @"StateUpdate";
			case UACWAlarmHistoryItemTypeAction:
			    return @"Action";

			case UACWAlarmHistoryItemTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)timestampXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)historyItemTypeXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UACWAlarmHistoryItemTypeUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ConfigurationUpdate"])
		    return @(UACWAlarmHistoryItemTypeConfigurationUpdate);
		if ([value isEqualToString:@"StateUpdate"])
		    return @(UACWAlarmHistoryItemTypeStateUpdate);
		if ([value isEqualToString:@"Action"])
		    return @(UACWAlarmHistoryItemTypeAction);

		return @(UACWAlarmHistoryItemTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UACWAlarmHistoryItemType castValue = (UACWAlarmHistoryItemType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UACWAlarmHistoryItemTypeConfigurationUpdate:
			    return @"ConfigurationUpdate";
			case UACWAlarmHistoryItemTypeStateUpdate:
			    return @"StateUpdate";
			case UACWAlarmHistoryItemTypeAction:
			    return @"Action";

			case UACWAlarmHistoryItemTypeUnknown:
			default:
				return nil;
        }
    }];
}

@end
