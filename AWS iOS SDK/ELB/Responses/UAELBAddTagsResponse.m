//
//  UAELBAddTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBAddTagsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBAddTagsResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:AddTagsResponse/ElasticLoadBalancing:AddTagsResult/";
}

@end

#pragma clang diagnostic pop