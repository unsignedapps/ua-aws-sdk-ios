//
//  UAIAMListInstanceProfilesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListInstanceProfilesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMInstanceProfile.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMListInstanceProfilesResponse

@synthesize instanceProfiles=_instanceProfiles, isTruncated=_isTruncated, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceProfileAtIndex:) propertyName:@"instanceProfiles"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addInstanceProfile:) propertyName:@"instanceProfiles"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./iam:ListInstanceProfilesResponse/iam:ListInstanceProfilesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceProfiles": @"iam:InstanceProfiles/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceProfilesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMInstanceProfile class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop