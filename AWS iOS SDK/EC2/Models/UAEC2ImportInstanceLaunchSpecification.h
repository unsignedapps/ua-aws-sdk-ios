//
//  UAEC2ImportInstanceLaunchSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Placement;

@interface UAEC2ImportInstanceLaunchSpecification : UAEC2Model

@property (nonatomic, copy) NSString *architecture;
@property (nonatomic, strong) NSMutableArray *groupNames;
@property (nonatomic, copy) NSString *additionalInfo;
@property (nonatomic, copy) NSString *userData;
- (NSString *)decodedUserData;
- (void)setDecodedUserData:(NSString *)decodedUserData;
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) UAEC2Placement *placement;
@property (nonatomic) BOOL monitoring;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic) UAEC2InstanceInitiatedShutdownBehavior instanceInitiatedShutdownBehavior;
@property (nonatomic, copy) NSString *privateIPAddress;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)groupNameAtIndex:(NSUInteger)index;

/**
 * Adds a GroupName to the groupNames property.
 *
 * This will initialise groupNames with an empty mutable array if necessary.
**/
- (void)addGroupName:(NSString *)groupName;

@end
