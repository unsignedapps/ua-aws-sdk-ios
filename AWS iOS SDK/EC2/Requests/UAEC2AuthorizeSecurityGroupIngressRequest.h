//
//  UAEC2AuthorizeSecurityGroupIngressRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2IPPermission, UAEC2AuthorizeSecurityGroupIngressResponse;

typedef void(^UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock)(UAEC2AuthorizeSecurityGroupIngressResponse *response, NSError *error);
typedef BOOL(^UAEC2AuthorizeSecurityGroupIngressRequestShouldContinueWaitingBlock)(UAEC2AuthorizeSecurityGroupIngressResponse *response, NSError *error);

@interface UAEC2AuthorizeSecurityGroupIngressRequest : UAEC2Request

@property (nonatomic) BOOL dryRun;
@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *groupID;
@property (nonatomic, copy) NSString *sourceSecurityGroupName;
@property (nonatomic, copy) NSString *sourceSecurityGroupOwnerID;
@property (nonatomic, copy) NSString *ipProtocol;
@property (nonatomic, strong) NSNumber *fromPort;
@property (nonatomic, strong) NSNumber *toPort;
@property (nonatomic, copy) NSString *cidrIP;
@property (nonatomic, strong) NSMutableArray *ipPermissions;
// @property (nonatomic, copy) UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2AuthorizeSecurityGroupIngressRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the UAEC2IPPermission at the specified index.
**/
- (UAEC2IPPermission *)ipPermissionAtIndex:(NSUInteger)index;

/**
 * Adds a IPPermission to the ipPermissions property.
 *
 * This will initialise ipPermissions with an empty mutable array if necessary.
**/
- (void)addIPPermission:(UAEC2IPPermission *)iPPermission;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2AuthorizeSecurityGroupIngressRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2AuthorizeSecurityGroupIngressRequestCompletionBlock)completionBlock;

@end
