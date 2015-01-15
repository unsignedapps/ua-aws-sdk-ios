//
//  UAKMSCreateGrantRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAKMSRequest.h"

@class UAKMSConstraints, UAKMSCreateGrantResponse;

typedef void(^UAKMSCreateGrantRequestCompletionBlock)(UAKMSCreateGrantResponse *response, NSError *error);
typedef BOOL(^UAKMSCreateGrantRequestShouldContinueWaitingBlock)(UAKMSCreateGrantResponse *response, NSError *error);

@interface UAKMSCreateGrantRequest : UAKMSRequest

@property (nonatomic, copy) NSString *keyID;
@property (nonatomic, copy) NSString *granteePrincipal;
@property (nonatomic, copy) NSString *retiringPrincipal;
@property (nonatomic, strong) NSMutableArray *operations;
@property (nonatomic, copy) UAKMSConstraints *constraints;
@property (nonatomic, strong) NSMutableArray *grantTokens;
// @property (nonatomic, copy) UAKMSCreateGrantRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAKMSCreateGrantRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)operationAtIndex:(NSUInteger)index;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)grantTokenAtIndex:(NSUInteger)index;

/**
 * Adds a Operation to the operations property.
 *
 * This will initialise operations with an empty mutable array if necessary.
**/
- (void)addOperation:(NSString *)operation;
/**
 * Adds a GrantToken to the grantTokens property.
 *
 * This will initialise grantTokens with an empty mutable array if necessary.
**/
- (void)addGrantToken:(NSString *)grantToken;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSCreateGrantRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSCreateGrantRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSCreateGrantRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSCreateGrantRequestCompletionBlock)completionBlock;

@end