//
//  UAMAEvent.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAEvent.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAMobileAnalytics.h"
#import "UAMASession.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAMAEvent

@synthesize eventType=_eventType, timestamp=_timestamp, attributes=_attributes, metrics=_metrics, session=_session, version=_version;

- (instancetype)init
{
    if (self = [super init])
    {
        // default to the current session
        [self setSession:[UAMobileAnalytics currentSession]];
        
        // and the current time
        [self setTimestamp:[NSDate date]];
        
        // and some empty attribute/metric dictionaries
        [self setAttributes:[NSMutableDictionary dictionary]];
        [self setMetrics:[NSMutableDictionary dictionary]];
        
        // and hardcoded version number
        [self setVersion:@"v2.0"];
        
        // additional accessors
        [self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(attributeForKey:) propertyName:@"attributes"];
        [self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setAttribute:forKey:) propertyName:@"attributes"];

        [self UA_addDictionaryKeyValueAdditionalAccessorForSelector:@selector(metricForKey:) propertyName:@"metrics"];
        [self UA_addSetObjectForKeyAdditionalAccessorForSelector:@selector(setMetric:forKey:) propertyName:@"metrics"];
    }
    return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [[super JSONKeyPathsByPropertyKey] UAMTL_dictionaryByAddingEntriesFromDictionary:
    @{
        @"eventType":           @"eventType",
        @"timestamp":           @"timestamp",
        @"attributes":          @"attributes",
        @"metrics":             @"metrics",
        @"session":             @"session",
        @"version":             @"version"
    }];
}

+ (NSValueTransformer *)timestampJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
}

+ (NSValueTransformer *)sessionJSONTransformer
{
    return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAMASession class]];
}

@end

#pragma clang diagnostic pop