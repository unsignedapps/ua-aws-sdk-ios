//
//  UAMAClientEnvironment.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAModel.h"

@interface UAMAClientEnvironment : UAMAModel <UAMTLJSONSerializing>

/**
 * The platform that this SDK is running on. Only "iOS" is supported for us,
 * unless you've somehow recompiled this to run on FireOS or Android...
 *
 * When created via +currentEnvironment, will default to -[UIDevice systemName].
**/
@property (nonatomic, copy) NSString *platform;

/**
 * The model of the client device.
 *
 * When created via +currentEnvironment, will default to -[UIDevice model].
**/
@property (nonatomic, copy) NSString *model;

/**
 * The version of the current model.
 *
 * When created via +currentEnvironment, will default to the current model version. (e.g iPhone5,1)
**/
@property (nonatomic, copy) NSString *modelVersion;

/**
 * The manufacturer of the current device.
 *
 * When created via +currentEnvironment, will default to "apple".
**/
@property (nonatomic, copy) NSString *make;

/**
 * The platform/operating system version.
 *
 * When created via +currentEnvironment, will default to -[UIDevice systemVersion].
**/
@property (nonatomic, copy) NSString *platformVersion;

/**
 * The locale of the current device.
 *
 * When created via +currentEnvironment, will default to the current locale.
**/
@property (nonatomic, copy) NSString *locale;

/**
 * Creates a default instance of the UAMAClientEnvironment with the values populated
 * based on the current device.
 *
 * The following values will be populdated:
 *
 * platform                 => -[UIDevice systemName]
 * model                    => -[UIDevice model]
 * modelVersion             => Current model version (e.g. iPhone5,1)
 * make                     => "apple"
 * platformVersion          => -[UIDevice systemVersion]
 * locale                   => Current locale from -[NSLocale autoupdatingCurrentLocale].
**/
+ (UAMAClientEnvironment *)currentEnvironment;

@end
