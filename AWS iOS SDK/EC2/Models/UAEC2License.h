//
//  UAEC2License.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2LicenseCapacity, UAEC2Tag;

@interface UAEC2License : UAEC2Model

@property (nonatomic, copy) NSString *licenseID;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *pool;
@property (nonatomic, copy) NSArray *capacities;
@property (nonatomic, copy) NSArray *tags;

@end
