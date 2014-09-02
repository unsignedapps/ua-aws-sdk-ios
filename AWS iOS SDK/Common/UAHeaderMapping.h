//
//  UAHeaderMapping.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UAHeaderMapping <NSObject>

/**
 * Should return a dictionary of response header -> property key mappings.
**/
+ (NSDictionary *)UAHeaderMappingsByPropertyKey;

@end