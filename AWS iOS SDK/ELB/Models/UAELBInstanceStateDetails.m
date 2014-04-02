//
//  UAELBInstanceStateDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBInstanceStateDetails.h"

@implementation UAELBInstanceStateDetails

@synthesize instanceID=_instanceID, state=_state, reasonCode=_reasonCode, descriptionValue=_descriptionValue;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"ElasticLoadBalancing:InstanceId",
        @"state": @"ElasticLoadBalancing:State",
        @"reasonCode": @"ElasticLoadBalancing:ReasonCode",
        @"descriptionValue": @"ElasticLoadBalancing:Description"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBInstanceStateInService), @(UAELBInstanceStateOutOfService) ]
                                               stringValues:@[ @"InService", @"OutOfService" ]
                                               unknownValue:@(UAELBInstanceStateUnknown)];
}

+ (NSValueTransformer *)reasonCodeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBInstanceStateReasonCodeElb), @(UAELBInstanceStateReasonCodeInstance) ]
                                               stringValues:@[ @"ELB", @"Instance" ]
                                               unknownValue:@(UAELBInstanceStateReasonCodeUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBInstanceStateInService), @(UAELBInstanceStateOutOfService) ]
                                               stringValues:@[ @"InService", @"OutOfService" ]
                                               unknownValue:@(UAELBInstanceStateUnknown)];
}

+ (NSValueTransformer *)reasonCodeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAELBInstanceStateReasonCodeElb), @(UAELBInstanceStateReasonCodeInstance) ]
                                               stringValues:@[ @"ELB", @"Instance" ]
                                               unknownValue:@(UAELBInstanceStateReasonCodeUnknown)];
}

@end
