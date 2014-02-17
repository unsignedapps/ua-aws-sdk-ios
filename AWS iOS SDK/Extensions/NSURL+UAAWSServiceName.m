//
//  NSURL+UAAWSServiceName.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 17/02/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "NSURL+UAAWSServiceName.h"

@implementation NSURL (UAAWSServiceName)

- (NSString *)UA_AWSServiceName
{
    return [self.host substringToIndex:([self.host rangeOfString:@"."].location)];
}

@end
