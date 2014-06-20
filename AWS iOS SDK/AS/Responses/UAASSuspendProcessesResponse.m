//
//  UAASSuspendProcessesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASSuspendProcessesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASSuspendProcessesResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:SuspendProcessesResponse/AutoScaling:SuspendProcessesResult/";
}

@end

#pragma clang diagnostic pop