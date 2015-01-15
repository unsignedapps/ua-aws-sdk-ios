//
//  NSString+UAAWSRegions.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 17/02/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

@import Foundation;
#import "UAAWSRegion.h"

@interface NSString (UAAWSRegions)

+ (NSString *)UA_regionStringForRegionValue:(UAAWSRegion)region;
- (UAAWSRegion)UA_regionValue;

@end
