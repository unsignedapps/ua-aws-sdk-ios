//
//  UAEC2NetworkACL.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
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

/**
 * Adds a Entry to the entries property.
 *
 * This will initialise entries with an empty mutable array if necessary.
**/
- (void)addEntry:(UAEC2Entry *)entry;
/**
 * Adds a Association to the associations property.
 *
 * This will initialise associations with an empty mutable array if necessary.
**/
- (void)addAssociation:(UAEC2NetworkACLAssociation *)association;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
