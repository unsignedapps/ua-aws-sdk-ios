//
//  UAEC2Subnet.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag;

@interface UAEC2Subnet : UAEC2Model

@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, strong) NSNumber *availableIPAddressCount;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic) BOOL defaultForAz;
@property (nonatomic) BOOL mapPublicIPOnLaunch;
@property (nonatomic, copy) NSArray *tags;

@end
