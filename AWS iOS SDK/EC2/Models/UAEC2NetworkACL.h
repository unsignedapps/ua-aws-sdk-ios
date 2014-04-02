//
//  UAEC2NetworkACL.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Entry, UAEC2NetworkACLAssociation, UAEC2Tag;

@interface UAEC2NetworkACL : UAEC2Model

@property (nonatomic, copy) NSString *networkACLID;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic) BOOL isDefault;
@property (nonatomic, copy) NSArray *entries;
@property (nonatomic, copy) NSArray *associations;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2Entry at the specified index.
**/
- (UAEC2Entry *)entryAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2NetworkACLAssociation at the specified index.
**/
- (UAEC2NetworkACLAssociation *)associationAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

@end
