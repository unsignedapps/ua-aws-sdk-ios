//
//  UAMAClientEnvironment.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAClientEnvironment.h"
#import <sys/types.h>
#import <sys/sysctl.h>

@implementation UAMAClientEnvironment

@synthesize platform=_platform, model=_model, modelVersion=_modelVersion, make=_make, platformVersion=_platformVersion, locale=_locale;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [[super JSONKeyPathsByPropertyKey] UAMTL_dictionaryByAddingEntriesFromDictionary:
    @{
        @"platform":            @"platform",
        @"model":               @"model",
        @"modelVersion":        @"model_version",
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
    [environment setModelVersion:[self currentModelVersion]];
    [environment setMake:@"apple"];
    [environment setPlatformVersion:[device systemVersion]];
    
    // set known locale information
    NSLocale *locale = [NSLocale autoupdatingCurrentLocale];
    [environment setLocale:[locale localeIdentifier]];
    
    return environment;
}

+ (NSString *)currentModelVersion
{
    int mib[2];
    size_t len;
    char *machine;
    
    mib[0] = CTL_HW;
    mib[1] = HW_MACHINE;
    sysctl(mib, 2, NULL, &len, NULL, 0);
    machine = malloc(len);
    sysctl(mib, 2, machine, &len, NULL, 0);
    
    NSString *modelVersionCode = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    
    return modelVersionCode;
}

@end
