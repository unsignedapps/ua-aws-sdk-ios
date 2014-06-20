//
//  UAASDeleteTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDeleteTagsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDeleteTagsResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DeleteTagsResponse/AutoScaling:DeleteTagsResult/";
}

@end

#pragma clang diagnostic pop