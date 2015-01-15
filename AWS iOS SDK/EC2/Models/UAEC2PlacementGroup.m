//
//  UAEC2PlacementGroup.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PlacementGroup.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2PlacementGroup

@synthesize groupName=_groupName, strategy=_strategy, state=_state;

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
        @"groupName": @"ec2:groupName",
        @"strategy": @"ec2:strategy",
        @"state": @"ec2:state"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)strategyQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2PlacementGroupStrategyCluster) ]
                                               stringValues:@[ @"cluster" ]
                                               unknownValue:@(UAEC2PlacementGroupStrategyUnknown)];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2PlacementGroupStatePending), @(UAEC2PlacementGroupStateAvailable), @(UAEC2PlacementGroupStateDeleting), @(UAEC2PlacementGroupStateDeleted) ]
                                               stringValues:@[ @"pending", @"available", @"deleting", @"deleted" ]
                                               unknownValue:@(UAEC2PlacementGroupStateUnknown)];
}

+ (NSValueTransformer *)strategyXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2PlacementGroupStrategyCluster) ]
                                               stringValues:@[ @"cluster" ]
                                               unknownValue:@(UAEC2PlacementGroupStrategyUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2PlacementGroupStatePending), @(UAEC2PlacementGroupStateAvailable), @(UAEC2PlacementGroupStateDeleting), @(UAEC2PlacementGroupStateDeleted) ]
                                               stringValues:@[ @"pending", @"available", @"deleting", @"deleted" ]
                                               unknownValue:@(UAEC2PlacementGroupStateUnknown)];
}

@end

#pragma clang diagnostic pop