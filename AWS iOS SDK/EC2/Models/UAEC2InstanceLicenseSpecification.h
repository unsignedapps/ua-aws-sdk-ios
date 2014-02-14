//
//  UAEC2InstanceLicenseSpecification.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2InstanceLicenseSpecification : UAEC2Model

@property (nonatomic, copy) NSString *pool;

- (id)initWithPool:(NSString *)pool;

@end
