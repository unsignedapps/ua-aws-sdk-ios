//
//  UADDBAttributeUpdate.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@interface UADDBAttributeUpdate : UADDBModel

/**
 * Must be one of: NSString, NSNumber, NSData, a subclass thereof, or an NSArray of these options.
**/
@property (nonatomic, strong) id value;
@property (nonatomic) UADDBAttributeUpdateActionType action;

@end
