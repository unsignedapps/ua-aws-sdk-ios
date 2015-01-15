//
//  UAEC2VPCClassicLink.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag;

@interface UAEC2VPCClassicLink : UAEC2Model

@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic) BOOL classicLinkEnabled;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
