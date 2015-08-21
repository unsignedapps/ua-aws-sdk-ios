//
//  UARDSDBSecurityGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@class UARDSEC2SecurityGroup, UARDSIPRange;

@interface UARDSDBSecurityGroup : UARDSModel

@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *dBSecurityGroupName;
@property (nonatomic, copy) NSString *dBSecurityGroupDescription;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSArray *eC2SecurityGroups;
@property (nonatomic, copy) NSArray *iPRanges;

/**
 * Retrieves the UARDSEC2SecurityGroup at the specified index.
**/
- (UARDSEC2SecurityGroup *)eC2SecurityGroupAtIndex:(NSUInteger)index;

/**
 * Retrieves the UARDSIPRange at the specified index.
**/
- (UARDSIPRange *)iPRangeAtIndex:(NSUInteger)index;

/**
 * Adds a EC2SecurityGroup to the eC2SecurityGroups property.
 *
 * This will initialise eC2SecurityGroups with an empty mutable array if necessary.
**/
- (void)addEC2SecurityGroup:(UARDSEC2SecurityGroup *)eC2SecurityGroup;
/**
 * Adds a IPRange to the iPRanges property.
 *
 * This will initialise iPRanges with an empty mutable array if necessary.
**/
- (void)addIPRange:(UARDSIPRange *)iPRange;

@end
