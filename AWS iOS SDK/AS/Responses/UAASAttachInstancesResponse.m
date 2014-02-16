//
//  UAASAttachInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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
