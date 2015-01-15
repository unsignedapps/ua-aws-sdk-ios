//
//  UAEC2ModifySnapshotAttributeRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2CreateVolumePermissionModifications, UAEC2ModifySnapshotAttributeResponse;

typedef void(^UAEC2ModifySnapshotAttributeRequestCompletionBlock)(UAEC2ModifySnapshotAttributeResponse *response, NSError *error);
typedef BOOL(^UAEC2ModifySnapshotAttributeRequestShouldContinueWaitingBlock)(UAEC2ModifySnapshotAttributeResponse *response, NSError *error);

@interface UAEC2ModifySnapshotAttributeRequest : UAEC2Request

@property (nonatomic) BOOL dryRun;
@property (nonatomic, copy) NSString *snapshotID;
@property (nonatomic, copy) NSString *attribute;
@property (nonatomic, copy) NSString *operationType;
@property (nonatomic, strong) NSMutableArray *userIDs;
@property (nonatomic, strong) NSMutableArray *groupNames;
@property (nonatomic, copy) UAEC2CreateVolumePermissionModifications *createVolumePermission;
// @property (nonatomic, copy) UAEC2ModifySnapshotAttributeRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2ModifySnapshotAttributeRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)userIDAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)groupNameAtIndex:(NSUInteger)index;

/**
 * Adds a UserID to the userIDs property.
 *
 * This will initialise userIDs with an empty mutable array if necessary.
**/
- (void)addUserID:(NSString *)userID;
/**
 * Adds a GroupName to the groupNames property.
 *
 * This will initialise groupNames with an empty mutable array if necessary.
**/
- (void)addGroupName:(NSString *)groupName;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ModifySnapshotAttributeRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ModifySnapshotAttributeRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ModifySnapshotAttributeRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ModifySnapshotAttributeRequestCompletionBlock)completionBlock;

@end
