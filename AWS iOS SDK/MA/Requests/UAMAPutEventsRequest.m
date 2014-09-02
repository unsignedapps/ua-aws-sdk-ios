//
//  UAMAPutEventsRequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAPutEventsRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAMAEvent.h"
#import "UAMAPutEventsResponse.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface UAMAPutEventsRequest ()

@property (nonatomic, strong) NSString *xAmzTarget;

@end

@implementation UAMAPutEventsRequest

@synthesize events=_events, xAmzTarget=_xAmzTarget;

- (instancetype)init
{
    if (self = [super init])
    {
        [self setXAmzTarget:@"AWSEventRecorderService.PutEvents"];
        [self UA_addAtIndexAdditionalAccessorForSelector:@selector(eventAtIndex:) propertyName:@"events"];
        [self UA_addAddObjectAdditionalAccessorForSelector:@selector(addEvent:) propertyName:@"events"];
    }
    return self;
}

- (Class)UA_ResponseClass
{
    return [UAMAPutEventsResponse class];
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [[super JSONKeyPathsByPropertyKey] UAMTL_dictionaryByAddingEntriesFromDictionary:
    @{
        @"events":          @"events"
    }];
}

+ (NSValueTransformer *)eventsJSONTransformer
{
    return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAMAEvent class]];
}

@end

#pragma clang diagnostic pop