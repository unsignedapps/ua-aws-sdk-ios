//
//  UACWDescribeAlarmHistoryResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDescribeAlarmHistoryResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UACWAlarmHistoryItem.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UACWDescribeAlarmHistoryResponse

@synthesize alarmHistoryItems=_alarmHistoryItems, nextToken=_nextToken;

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:DescribeAlarmHistoryResponse/cloudwatch:DescribeAlarmHistoryResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UACWResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"alarmHistoryItems": @"cloudwatch:AlarmHistoryItems/cloudwatch:member",
        @"nextToken": @"cloudwatch:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)alarmHistoryItemsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UACWAlarmHistoryItem class]];
}

@end

#pragma clang diagnostic pop