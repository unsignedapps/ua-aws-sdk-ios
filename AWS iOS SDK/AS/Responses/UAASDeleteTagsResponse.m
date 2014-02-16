//
//  UAASDeleteTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteTagsResponse.h"

@implementation UAASDeleteTagsResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteTagsResponse/AutoScaling:DeleteTagsResult/";
}

@end
