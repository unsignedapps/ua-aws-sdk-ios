//
//  UAELBRemoveTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBRemoveTagsResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBRemoveTagsResponse

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:RemoveTagsResponse/ElasticLoadBalancing:RemoveTagsResult/";
}

@end

#pragma clang diagnostic pop