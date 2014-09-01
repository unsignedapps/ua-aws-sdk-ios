//
//  UAMAClientEnvironment.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAClientEnvironment.h"

@implementation UAMAClientEnvironment

@synthesize platform=_platform, model=_model, make=_make, platformVersion=_platformVersion, locale=_locale;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [[super JSONKeyPathsByPropertyKey] UAMTL_dictionaryByAddingEntriesFromDictionary:
    @{
        @"platform":            @"platform",
        @"model":               @"model",
        @"make":                @"make",
        @"platformVersion":     @"platform_version",
        @"locale":              @"locale"
    }];
}

+ (UAMAClientEnvironment *)currentEnvironment
{
    UAMAClientEnvironment *environment = [[UAMAClientEnvironment alloc] init];
    
    // set known current device information
    UIDevice *device = [UIDevice currentDevice];
    [environment setPlatform:[device systemName]];
    [environment setModel:[device model]];
    [environment setMake:@"Apple"];
    [environment setPlatformVersion:[device systemVersion]];
    
    // set known locale information
    NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
    [environment setLocale:[locale localeIdentifier]];
    
    return environment;
}

@end
