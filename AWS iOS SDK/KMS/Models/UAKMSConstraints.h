//
//  UAKMSConstraints.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSModel.h"

@interface UAKMSConstraints : UAKMSModel

@property (nonatomic, strong) NSMutableDictionary *encryptionContextSubset;
@property (nonatomic, strong) NSMutableDictionary *encryptionContextEquals;

/**
 * Retrieves the NSString for the specified Key.
**/
- (NSString *)encryptionContextSubsetForKey:(NSString *)key;

/**
 * Retrieves the NSString for the specified Key.
**/
- (NSString *)encryptionContextEqualsForKey:(NSString *)key;

/**
 * Sets the value of Key to EncryptionContextSubset in the encryptionContextSubset property.
 *
 * This will initialise encryptionContextSubset with an empty mutable dictionary if necessary.
**/
- (void)setEncryptionContextSubset:(NSString *)encryptionContextSubset forKey:(NSString *)key;

/**
 * Sets the value of Key to EncryptionContextEquals in the encryptionContextEquals property.
 *
 * This will initialise encryptionContextEquals with an empty mutable dictionary if necessary.
**/
- (void)setEncryptionContextEquals:(NSString *)encryptionContextEquals forKey:(NSString *)key;

@end
