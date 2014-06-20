//
//  UAASCreateOrUpdateTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASCreateOrUpdateTagsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASCreateOrUpdateTagsResponse

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:CreateOrUpdateTagsResponse/AutoScaling:CreateOrUpdateTagsResult/";
}

@end

#pragma clang diagnostic pop