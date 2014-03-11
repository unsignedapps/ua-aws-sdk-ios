//
//  UAEC2RunInstancesRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2Placement, UAEC2BlockDeviceMapping, UAEC2InstanceNetworkInterfaceSpecification, UAEC2IAMInstanceProfileSpecification, UAEC2RunInstancesResponse;

typedef void(^UAEC2RunInstancesRequestCompletionBlock)(UAEC2RunInstancesResponse *response, NSError *error);
typedef BOOL(^UAEC2RunInstancesRequestShouldContinueWaitingBlock)(UAEC2RunInstancesResponse *response, NSError *error);

@interface UAEC2RunInstancesRequest : UAEC2Request

@property (nonatomic) BOOL dryRun;
@property (nonatomic, copy) NSString *imageID;
@property (nonatomic, strong) NSNumber *minCount;
@property (nonatomic, strong) NSNumber *maxCount;
@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, strong) NSMutableArray *securityGroups;
@property (nonatomic, strong) NSMutableArray *securityGroupIDs;
@property (nonatomic, copy) NSString *userData;
@property (nonatomic, copy) NSString *decodedUserData;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) UAEC2Placement *placement;
@property (nonatomic, copy) NSString *kernelID;
@property (nonatomic, copy) NSString *ramdiskID;
@property (nonatomic, strong) NSMutableArray *blockDeviceMappings;
@property (nonatomic) BOOL monitoringEnabled;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic) BOOL disableApiTermination;
@property (nonatomic) UAEC2InstanceInitiatedShutdownBehavior instanceInitiatedShutdownBehavior;
@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, copy) NSString *clientToken;
@property (nonatomic, copy) NSString *additionalInfo;
@property (nonatomic, strong) NSMutableArray *networkInterfaces;
@property (nonatomic, copy) UAEC2IAMInstanceProfileSpecification *iamInstanceProfile;
@property (nonatomic) BOOL ebsOptimized;
// @property (nonatomic, copy) UAEC2RunInstancesRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2RunInstancesRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Adds a SecurityGroup to the securityGroups property.
 *
 * This will initialise securityGroups with an empty mutable array if necessary.
**/
- (void)addSecurityGroup:(NSString *)securityGroup;
/**
 * Adds a SecurityGroupID to the securityGroupIDs property.
 *
 * This will initialise securityGroupIDs with an empty mutable array if necessary.
**/
- (void)addSecurityGroupID:(NSString *)securityGroupID;
/**
 * Adds a BlockDeviceMapping to the blockDeviceMappings property.
 *
 * This will initialise blockDeviceMappings with an empty mutable array if necessary.
**/
- (void)addBlockDeviceMapping:(UAEC2BlockDeviceMapping *)blockDeviceMapping;
/**
 * Adds a NetworkInterface to the networkInterfaces property.
 *
 * This will initialise networkInterfaces with an empty mutable array if necessary.
**/
- (void)addNetworkInterface:(UAEC2InstanceNetworkInterfaceSpecification *)networkInterface;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2RunInstancesRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2RunInstancesRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2RunInstancesRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2RunInstancesRequestCompletionBlock)completionBlock;

@end
