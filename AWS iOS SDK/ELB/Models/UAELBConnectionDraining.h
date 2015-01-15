//
//  UAELBConnectionDraining.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBConnectionDraining : UAELBModel

@property (nonatomic) BOOL enabled;
@property (nonatomic, strong) NSNumber *timeout;

@end
