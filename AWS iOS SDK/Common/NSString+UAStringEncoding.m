//
//  NSString+UAStringEncoding.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 17/02/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "NSString+UAStringEncoding.h"

@implementation NSString (UAStringEncoding)

- (NSData *)UA_UTF8Data
{
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

@end
