//
//  UAMAClientContext.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAClientContext.h"

@interface UAMAClientContext ()

@property (nonatomic, strong) NSString *version;

@end

@implementation UAMAClientContext

@synthesize client=_client, custom=_custom, environment=_environment, version=_version;

- (instancetype)init
{
    if (self = [super init])
    {
        // default to an empty custom dictionary
        [self setCustom:[NSMutableDictionary dictionary]];
        [self setVersion:@"1.0"];
    }
    return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [[super JSONKeyPathsByPropertyKey] UAMTL_dictionaryByAddingEntriesFromDictionary:
    @{
        @"client":          @"client",
        @"custom":          @"custom",
        @"environment":     @"env",
        @"version":         @"version"
    }];
}

+ (NSValueTransformer *)clientJSONTransformer
{
    return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAMAClient class]];
}

+ (NSValueTransformer *)environmentJSONTransformer
{
    return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAMAClientEnvironment class]];
}

#pragma mark - Convenience Methods

+ (UAMAClientContext *)currentClientContext
{
    UAMAClientContext *context = [[UAMAClientContext alloc] init];
    [context setClient:[UAMAClient currentDeviceClient]];
    [context setEnvironment:[UAMAClientEnvironment currentEnvironment]];
    return context;
}


@end
