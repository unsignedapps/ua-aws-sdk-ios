//
//  UAEC2Subnet.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2Tag;

@interface UAEC2Subnet : UAEC2Model

@property (nonatomic, copy) NSString *subnetID;
@property (nonatomic) UAEC2SubnetState state;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSString *cidrBlock;
@property (nonatomic, strong) NSNumber *availableIPAddressCount;
@property (nonatomic, copy) NSString *availabilityZone;
@property (nonatomic) BOOL defaultForAz;
@property (nonatomic) BOOL mapPublicIPOnLaunch;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

@end
