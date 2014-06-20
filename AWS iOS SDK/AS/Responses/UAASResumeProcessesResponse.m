//
//  UAASResumeProcessesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASResumeProcessesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASResumeProcessesResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:ResumeProcessesResponse/AutoScaling:ResumeProcessesResult/";
}

@end

#pragma clang diagnostic pop