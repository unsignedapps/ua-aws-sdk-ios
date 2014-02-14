//
//  UAEC2CreateNetworkACLEntryRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2IcmpTypeCode, UAEC2PortRange, UAEC2CreateNetworkACLEntryResponse;

typedef void(^UAEC2CreateNetworkACLEntryRequestCompletionBlock)(UAEC2CreateNetworkACLEntryResponse *response, NSError *error);
typedef BOOL(^UAEC2CreateNetworkACLEntryRequestShouldContinueWaitingBlock)(UAEC2CreateNetworkACLEntryResponse *response, NSError *error);

@interface UAEC2CreateNetworkACLEntryRequest : UAEC2Request

@property (nonatomic) BOOL dryRun;
@property (nonatomic, copy) NSString *networkACLID;
@property (nonatomic, strong) NSNumber *ruleNumber;
@property (nonatomic, copy) NSString *protocol;
@property (nonatomic, copy) NSString *ruleAction;
@property (nonatomic) BOOL egress;
@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, copy) UAEC2IcmpTypeCode *icmpTypeCode;
@property (nonatomic, copy) UAEC2PortRange *portRange;
// @property (nonatomic, copy) UAEC2CreateNetworkACLEntryRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2CreateNetworkACLEntryRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateNetworkACLEntryRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateNetworkACLEntryRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateNetworkACLEntryRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateNetworkACLEntryRequestCompletionBlock)completionBlock;

@end
