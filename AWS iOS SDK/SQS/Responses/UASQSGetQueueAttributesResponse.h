//
//  UASQSGetQueueAttributesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASQSResponse.h"

@interface UASQSGetQueueAttributesResponse : UASQSResponse

@property (nonatomic, copy) NSDictionary *attributes;

/**
 * Retrieves the NSString for the specified Name.
**/
- (NSString *)attributeForName:(NSString *)name;

/**
 * Sets the value of Name to Attribute in the attributes property.
 *
 * This will initialise attributes with an empty mutable dictionary if necessary.
**/
- (void)setAttribute:(NSString *)attribute forName:(NSString *)name;

@end
