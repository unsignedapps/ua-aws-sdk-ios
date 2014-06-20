//
//  UAASAttachInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAttachInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASAttachInstancesResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:AttachInstancesResponse/AutoScaling:AttachInstancesResult/";
}

@end

#pragma clang diagnostic pop