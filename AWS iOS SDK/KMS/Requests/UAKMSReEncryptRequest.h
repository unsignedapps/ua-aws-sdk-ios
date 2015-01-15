//
//  UAKMSReEncryptRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//

#import "UAKMSRequest.h"

@class UAKMSReEncryptResponse;

typedef void(^UAKMSReEncryptRequestCompletionBlock)(UAKMSReEncryptResponse *response, NSError *error);
typedef BOOL(^UAKMSReEncryptRequestShouldContinueWaitingBlock)(UAKMSReEncryptResponse *response, NSError *error);

@interface UAKMSReEncryptRequest : UAKMSRequest

@property (nonatomic, copy) NSString *ciphertextBlob;
- (NSData *)decodedCiphertextBlob;
- (void)setDecodedCiphertextBlob:(NSData *)decodedCiphertextBlob;
@property (nonatomic, strong) NSMutableDictionary *sourceEncryptionContext;
@property (nonatomic, copy) NSString *destinationKeyID;
@property (nonatomic, strong) NSMutableDictionary *destinationEncryptionContext;
@property (nonatomic, strong) NSMutableArray *grantTokens;
// @property (nonatomic, copy) UAKMSReEncryptRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAKMSReEncryptRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString for the specified Key.
**/
- (NSString *)sourceEncryptionContextForKey:(NSString *)key;

/**
 * Retrieves the NSString for the specified Key.
**/
- (NSString *)destinationEncryptionContextForKey:(NSString *)key;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)grantTokenAtIndex:(NSUInteger)index;

/**
 * Adds a GrantToken to the grantTokens property.
 *
 * This will initialise grantTokens with an empty mutable array if necessary.
**/
- (void)addGrantToken:(NSString *)grantToken;

/**
 * Sets the value of Key to SourceEncryptionContext in the sourceEncryptionContext property.
 *
 * This will initialise sourceEncryptionContext with an empty mutable dictionary if necessary.
**/
- (void)setSourceEncryptionContext:(NSString *)sourceEncryptionContext forKey:(NSString *)key;

/**
 * Sets the value of Key to DestinationEncryptionContext in the destinationEncryptionContext property.
 *
 * This will initialise destinationEncryptionContext with an empty mutable dictionary if necessary.
**/
- (void)setDestinationEncryptionContext:(NSString *)destinationEncryptionContext forKey:(NSString *)key;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSReEncryptRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSReEncryptRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSReEncryptRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSReEncryptRequestCompletionBlock)completionBlock;

@end
