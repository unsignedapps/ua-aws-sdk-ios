//
//  UAEC2VPC.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag;

@interface UAEC2VPC : UAEC2Model

@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic) UAEC2VPCState state;
@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, copy) NSString *dhcpOptionsID;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic) UAEC2InstanceTenancy instanceTenancy;
@property (nonatomic) BOOL isDefault;

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
