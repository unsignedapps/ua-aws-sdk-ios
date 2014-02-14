//
//  UAASAttachInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASAttachInstancesResponse.h"

@implementation UAASAttachInstancesResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:AttachInstancesResponse/AutoScaling:AttachInstancesResult/";
}

@end
