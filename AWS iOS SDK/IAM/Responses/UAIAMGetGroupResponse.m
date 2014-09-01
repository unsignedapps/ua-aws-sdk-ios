//
//  UAIAMGetGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMGetGroupResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMGroup.h"
#import "UAIAMUser.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMGetGroupResponse

@synthesize group=_group, users=_users, isTruncated=_isTruncated, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(userAtIndex:) propertyName:@"users"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addUser:) propertyName:@"users"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./iam:GetGroupResponse/iam:GetGroupResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"group": @"iam:Group",
        @"users": @"iam:Users/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)groupXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAIAMGroup class]];
}

+ (NSValueTransformer *)usersXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMUser class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop