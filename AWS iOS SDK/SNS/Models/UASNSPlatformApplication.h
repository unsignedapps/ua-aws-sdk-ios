//
//  UASNSPlatformApplication.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@class UASNSPlatformApplicationAttributes;

@interface UASNSPlatformApplication : UASNSModel

@property (nonatomic, copy) NSString *platformApplicationARN;
@property (nonatomic, copy) UASNSPlatformApplicationAttributes *attributes;

@end
