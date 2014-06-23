//
//  UAASCreateLaunchConfigurationRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAASRequest.h"

@class UAASBlockDeviceMapping, UAASCreateLaunchConfigurationResponse;

typedef void(^UAASCreateLaunchConfigurationRequestCompletionBlock)(UAASCreateLaunchConfigurationResponse *response, NSError *error);
typedef BOOL(^UAASCreateLaunchConfigurationRequestShouldContinueWaitingBlock)(UAASCreateLaunchConfigurationResponse *response, NSError *error);

@interface UAASCreateLaunchConfigurationRequest : UAASRequest

@property (nonatomic, copy) NSString *launchConfigurationName;
@property (nonatomic, copy) NSString *imageID;
@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, strong) NSMutableArray *securityGroups;
@property (nonatomic, copy) NSString *userData;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, strong) NSMutableArray *blockDeviceMappings;
@property (nonatomic) BOOL instanceMonitoringEnabled;
@property (nonatomic, copy) NSString *spotPrice;
@property (nonatomic, copy) NSString *iamInstanceProfile;
@property (nonatomic) BOOL ebsOptimized;
@property (nonatomic) BOOL associatePublicIPAddress;
@property (nonatomic, copy) NSString *placementTenancy;
// @property (nonatomic, copy) UAASCreateLaunchConfigurationRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAASCreateLaunchConfigurationRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)securityGroupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAASBlockDeviceMapping at the specified index.
**/
- (UAASBlockDeviceMapping *)blockDeviceMappingAtIndex:(NSUInteger)index;

/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(NSString *)securityGroup;
/**
 * Adds a BlockDeviceMapping to the blockDeviceMappings property.
 *
 * This will initialise blockDeviceMappings with an empty mutable array if necessary.
**/
- (void)addBlockDeviceMapping:(UAASBlockDeviceMapping *)blockDeviceMapping;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAASCreateLaunchConfigurationRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASCreateLaunchConfigurationRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASCreateLaunchConfigurationRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * This will find the value at the specified KeyPath and check against the supplied array. The request will stop waiting when the value is found in the array.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	keyPath				A keyPath to execute on the results.
 * @param	array 				An array of values that, if found, would cause the request to end.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASCreateLaunchConfigurationRequestCompletionBlock)completionBlock;

@end
