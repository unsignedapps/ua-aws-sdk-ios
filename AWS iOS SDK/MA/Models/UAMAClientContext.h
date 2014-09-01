//
//  UAMAClientContext.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAModel.h"
#import "UAMAClient.h"
#import "UAMAClientEnvironment.h"

/**
 * This is the client context header that is sent along for all Mobile Analytics
 * Requests. The default client context header (+[UAMAclientContext currentClientContext]) is
 * attached to all UAMARequests, unless you explicitly override it via -[UAMARequest setClientContext:].
**/

@interface UAMAClientContext : UAMAModel <UAMTLJSONSerializing>

/**
 * Information about the current client application.
 *
 * When created via +currentClientContext, this will default to +[UAMAClient currentDeviceClient].
**/
@property (nonatomic, strong) UAMAClient *client;

/**
 * Information about the current device and environment.
 *
 * When created via +currentClientContext, this will default to +[UAMAClientEnvironment currentEnvironment].
**/
@property (nonatomic, strong) UAMAClientEnvironment *environment;

/**
 * A dictionary of custom values pairs that you would like sent to Mobile Analytics
 * to help identify this application.
**/
@property (nonatomic, copy) NSDictionary *custom;

/**
 * Creates a default instance of the client context based on the currently running
 * device and application.
 *
 * You can override any and all properties (and the custom dictionary) after creation
 * if you wish to customise the values. You can also just create one from scratch.
 *
 * The following values will be populated by this method:
 *
 * client               => +[UAMAClient currentDeviceClient].
 * environment          => +[UAMAClientEnvironment currentEnvironment].
 * custom               => nil
**/
+ (UAMAClientContext *)currentClientContext;

@end
