//
//  UAMAClient.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAModel.h"

@interface UAMAClient : UAMAModel <UAMTLJSONSerializing>

/**
 * A unique identifier representing this installation instance of your app.
 *
 * If you use +currentDeviceClient, this will default to -[UIDevice identifierForVendor].
**/
@property (nonatomic, copy) NSString *clientID;

/**
 * The name of your app.
 *
 * If you use +currentDeviceClient, this will default to your app's CFBundleDisplayName.
**/
@property (nonatomic, copy) NSString *appName;

/**
 * The version of your app.
 *
 * If you use the +currentDeviceClient, this will default to your app's CFBundleVersion.
**/
@property (nonatomic, copy) NSString *version;

/**
 * The version code for your app.
 *
 * If you use the +currentDeviceClient, this will default to your app's CFBundleShortVersionString.
**/
@property (nonatomic, copy) NSString *versionCode;

/**
 * The app/bundle identifier.
 *
 * If you use the +currentDeviceClient, this will default to your app's CFBundleIdentifier.
**/
@property (nonatomic, copy) NSString *appID;


/**
 * Creates a default instance of UAMAClient with values populated based on the current
 * installation. That is, most values come from the Bundle and device identifiers.
 *
 * The following values will be populated:
 *
 *  clientID            => -[UIDevice identifierForVendor]
 *  appName             => The CFBundleDisplayName in the main bundle.
 *  version             => The CFBundleVersion in the main bundle.
 *  versionCode         => The CFBundleShortVersionString in the main bundle.
 *  appID               => The CFBundleIdentifier in the main bundle.
 *
 * Your main bundle is usually the Info.plist values in your project.
**/
+ (UAMAClient *)currentDeviceClient;

@end
