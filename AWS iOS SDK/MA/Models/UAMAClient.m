//
//  UAMAClient.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAClient.h"

@implementation UAMAClient

@synthesize clientID=_clientID, appID=_appID, appName=_appName, version=_version, versionCode=_versionCode;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [[super JSONKeyPathsByPropertyKey] UAMTL_dictionaryByAddingEntriesFromDictionary:
    @{
        @"clientID":    @"client_id",
        @"appID":       @"app_package_name",
        @"appName":     @"app_title",
        @"version":     @"app_version_name",
        @"versionCode": @"app_version_code"
    }];
}

+ (UAMAClient *)currentDeviceClient
{
    UAMAClient *client = [[UAMAClient alloc] init];
    
    [client setClientID:[[[UIDevice currentDevice] identifierForVendor] UUIDString]];

    NSDictionary *info = [[NSBundle mainBundle] infoDictionary];
    [client setAppName:[info objectForKey:(NSString *)kCFBundleNameKey]];
    [client setAppID:[info objectForKey:(NSString *)kCFBundleIdentifierKey]];
    [client setVersion:[info objectForKey:(NSString *)kCFBundleVersionKey]];
    [client setVersionCode:[info objectForKey:@"CFBundleShortVersionString"]];

    return client;
}

@end
