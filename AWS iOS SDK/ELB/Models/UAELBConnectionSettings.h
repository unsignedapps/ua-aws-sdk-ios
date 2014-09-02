//
//  UAELBConnectionSettings.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBConnectionSettings : UAELBModel

@property (nonatomic, strong) NSNumber *idleTimeout;

- (id)initWithIdleTimeout:(NSNumber *)idleTimeout;

@end
