//
//  UAKMSDecryptRequest.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//

#import "UAKMSRequest.h"

@class UAKMSDecryptResponse;

typedef void(^UAKMSDecryptRequestCompletionBlock)(UAKMSDecryptResponse *response, NSError *error);
typedef BOOL(^UAKMSDecryptRequestShouldContinueWaitingBlock)(UAKMSDecryptResponse *response, NSError *error);

@interface UAKMSDecryptRequest : UAKMSRequest

@property (nonatomic, copy) NSString *ciphertextBlob;
- (NSData *)decodedCiphertextBlob;
- (void)setDecodedCiphertextBlob:(NSData *)decodedCiphertextBlob;
@property (nonatomic, strong) NSMutableDictionary *encryptionContext;
@property (nonatomic, strong) NSMutableArray *grantTokens;
// @property (nonatomic, copy) UAKMSDecryptRequestCompletionBlock UA_RequestCompletionBlock;
// @property (nonatomic, copy) UAKMSDecryptRequestShouldContinueWaitingBlock UA_ShouldContinueWaiting;

/**
 * Retrieves the NSString for the specified Key.
**/
- (NSString *)encryptionContextForKey:(NSString *)key;

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
 * Sets the value of Key to EncryptionContext in the encryptionContext property.
 *
 * This will initialise encryptionContext with an empty mutable dictionary if necessary.
**/
- (void)setEncryptionContext:(NSString *)encryptionContext forKey:(NSString *)key;

#pragma mark - Invocation

/**
 * Invokes the request on the default queue.
 *
 * @param	owner				The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)invokeWithOwner:(id)owner completionBlock:(UAKMSDecryptRequestCompletionBlock)completionBlock;

/**
 * Invokes the request on the default queue and keeps retrying the request until the conditions are met.
 *
 * @param	owner						The owner of this request. Used when you need to cancel all requests for an owner.
 * @param	shouldContinueWaitingBlock 	Block to be called with the results of the request (see completionBlock). This block
 *										should return YES if you want the request to continue waiting, NO if it should complete and call the completionBlock.
 * @param	completionBlock		Block to be called with two parameters upon completion of the request: the response object for the request,
 *								or an NSError object if something went wrong.
**/
- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAKMSDecryptRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAKMSDecryptRequestCompletionBlock)completionBlock;

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
- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAKMSDecryptRequestCompletionBlock)completionBlock;

@end
