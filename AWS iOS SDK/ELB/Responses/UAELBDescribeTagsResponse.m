//
//  UAELBDescribeTagsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBDescribeTagsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBTagDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBDescribeTagsResponse

@synthesize tagDescriptions=_tagDescriptions;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagDescriptionAtIndex:) propertyName:@"tagDescriptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTagDescription:) propertyName:@"tagDescriptions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ElasticLoadBalancing:DescribeTagsResponse/ElasticLoadBalancing:DescribeTagsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"tagDescriptions": @"ElasticLoadBalancing:TagDescriptions/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagDescriptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAELBTagDescription class]];
}

@end

#pragma clang diagnostic pop