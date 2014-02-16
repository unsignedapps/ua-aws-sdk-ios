//
//  UAEC2IPRange.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2IPRange : UAEC2Model

@property (nonatomic, copy) NSString *cidrIP;

- (id)initWithCidrIP:(NSString *)cidrIP;

@end
