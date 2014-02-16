//
//  UAEC2DHCPConfiguration.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2DHCPConfiguration : UAEC2Model

@property (nonatomic, copy) NSString *key;
@property (nonatomic, strong) NSMutableArray *values;

@end
