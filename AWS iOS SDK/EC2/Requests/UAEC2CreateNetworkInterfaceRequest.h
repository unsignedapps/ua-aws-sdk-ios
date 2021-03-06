//
//  UAEC2CreateNetworkInterfaceRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAEC2Request.h"

@class UAEC2PrivateIPAddressSpecification, UAEC2CreateNetworkInterfaceResponse;

typedef void(^UAEC2CreateNetworkInterfaceRequestCompletionBlock)(UAEC2CreateNetworkInterfaceResponse *response, NSError *error);
typedef BOOL(^UAEC2CreateNetworkInterfaceRequestShouldContinueWaitingBlock)(UAEC2CreateNetworkInterfaceResponse *response, NSError *error);

@interface UAEC2CreateNetworkInterfaceRequest : UAEC2Request

@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *privateIPAddress;
@property (nonatomic, strong) NSMutableArray *groups;
@property (nonatomic, strong) NSMutableArray *privateIPAddresses;
@property (nonatomic, strong) NSNumber *secondaryPrivateIPAddressCount;
@property (nonatomic) BOOL dryRun;
// @property (nonatomic, copy) UAEC2CreateNetworkInterfaceRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAEC2CreateNetworkInterfaceRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)groupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2PrivateIPAddressSpecification at the specified index.
**/
- (UAEC2PrivateIPAddressSpecification *)privateIPAddressAtIndex:(NSUInteger)index;

/**
 * Adds a Group to the groups property.
 *
 * This will initialise groups with an empty mutable array if necessary.
**/
- (void)addGroup:(NSString *)group;
/**
 * Adds a PrivateIPAddress to the privateIPAddresses property.
 *
 * This will initialise privateIPAddresses with an empty mutable array if necessary.
**/
- (void)addPrivateIPAddress:(UAEC2PrivateIPAddressSpecification *)privateIPAddress;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateNetworkInterfaceRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateNetworkInterfaceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateNetworkInterfaceRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateNetworkInterfaceRequestCompletionBlock)completionBlock;

@end
