//
//  UAEC2ImportInstanceLaunchSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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
@property (nonatomic, copy) NSString *instanceType;
@property (nonatomic, copy) UAEC2Placement *placement;
@property (nonatomic) BOOL monitoring;
@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSString *instanceInitiatedShutdownBehavior;
@property (nonatomic, copy) NSString *privateIPAddress;

@end
