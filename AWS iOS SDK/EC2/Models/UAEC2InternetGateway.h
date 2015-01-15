//
//  UAEC2InternetGateway.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Attachment, UAEC2Tag;

@interface UAEC2InternetGateway : UAEC2Model

@property (nonatomic, copy) NSString *internetGatewayID;
@property (nonatomic, copy) NSArray *attachments;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2Attachment at the specified index.
**/
- (UAEC2Attachment *)attachmentAtIndex:(NSUInteger)index;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

/**
 * Adds a Attachment to the attachments property.
 *
 * This will initialise attachments with an empty mutable array if necessary.
**/
- (void)addAttachment:(UAEC2Attachment *)attachment;
/**
 * Adds a Tag to the tags property.
 *
 * This will initialise tags with an empty mutable array if necessary.
**/
- (void)addTag:(UAEC2Tag *)tag;

@end
