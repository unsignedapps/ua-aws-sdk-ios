//
//  UAELBTagDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBTag;

@interface UAELBTagDescription : UAELBModel

@property (nonatomic, copy) NSString *loadBalancerName;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAELBTag at the specified index.
**/
- (UAELBTag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAELBTag *)tag;

@end
