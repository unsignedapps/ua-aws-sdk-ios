//
//  UAASSuspendProcessesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
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
