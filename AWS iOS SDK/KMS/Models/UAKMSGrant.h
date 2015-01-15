//
//  UAKMSGrant.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSModel.h"

@class UAKMSConstraints;

@interface UAKMSGrant : UAKMSModel

@property (nonatomic, copy) NSString *grantID;
@property (nonatomic, copy) NSString *granteePrincipal;
@property (nonatomic, copy) NSString *retiringPrincipal;
@property (nonatomic, copy) NSString *issuingAccount;
@property (nonatomic, copy) NSArray *operations;
@property (nonatomic, copy) UAKMSConstraints *constraints;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)operationAtIndex:(NSUInteger)index;

/**
 * Adds a Operation to the operations property.
 *
 * This will initialise operations with an empty mutable array if necessary.
**/
- (void)addOperation:(NSString *)operation;

@end
