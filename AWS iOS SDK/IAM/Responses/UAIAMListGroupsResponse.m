//
//  UAIAMListGroupsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListGroupsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMListGroupsResponse

@synthesize groups=_groups, isTruncated=_isTruncated, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(groupAtIndex:) propertyName:@"groups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addGroup:) propertyName:@"groups"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./iam:ListGroupsResponse/iam:ListGroupsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"groups": @"iam:Groups/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMGroup class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop