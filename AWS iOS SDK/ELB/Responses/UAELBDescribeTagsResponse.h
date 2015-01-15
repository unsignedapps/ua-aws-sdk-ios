//
//  UAELBDescribeTagsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBTagDescription;

@interface UAELBDescribeTagsResponse : UAELBResponse

@property (nonatomic, copy) NSArray *tagDescriptions;

/**
 * Retrieves the UAELBTagDescription at the specified index.
**/
- (UAELBTagDescription *)tagDescriptionAtIndex:(NSUInteger)index;

/**
 * Adds a TagDescription to the tagDescriptions property.
 *
 * This will initialise tagDescriptions with an empty mutable array if necessary.
**/
- (void)addTagDescription:(UAELBTagDescription *)tagDescription;

@end
