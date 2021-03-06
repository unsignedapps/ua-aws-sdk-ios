//
//  UAASDescribeLaunchConfigurationsRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAASRequest.h"

@class UAASDescribeLaunchConfigurationsResponse;

typedef void(^UAASDescribeLaunchConfigurationsRequestCompletionBlock)(UAASDescribeLaunchConfigurationsResponse *response, NSError *error);
typedef BOOL(^UAASDescribeLaunchConfigurationsRequestShouldContinueWaitingBlock)(UAASDescribeLaunchConfigurationsResponse *response, NSError *error);

@interface UAASDescribeLaunchConfigurationsRequest : UAASRequest

@property (nonatomic, strong) NSMutableArray *launchConfigurationNames;
@property (nonatomic, copy) NSString *nextToken;
@property (nonatomic, strong) NSNumber *maxRecords;
// @property (nonatomic, copy) UAASDescribeLaunchConfigurationsRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAASDescribeLaunchConfigurationsRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)launchConfigurationNameAtIndex:(NSUInteger)index;

/**
 * Adds a LaunchConfigurationName to the launchConfigurationNames property.
 *
 * This will initialise launchConfigurationNames with an empty mutable array if necessary.
**/
- (void)addLaunchConfigurationName:(NSString *)launchConfigurationName;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAASDescribeLaunchConfigurationsRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAASDescribeLaunchConfigurationsRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAASDescribeLaunchConfigurationsRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAASDescribeLaunchConfigurationsRequestCompletionBlock)completionBlock;

@end
