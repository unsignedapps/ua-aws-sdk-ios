//
//  UAASSuspendProcessesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSuspendProcessesResponse.h"

@implementation UAASSuspendProcessesResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:SuspendProcessesResponse/AutoScaling:SuspendProcessesResult/";
}

@end
