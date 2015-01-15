//
//  UAKMSListKeyPoliciesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSListKeyPoliciesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSListKeyPoliciesResponse

@synthesize policyNames=_policyNames, nextMarker=_nextMarker, truncated=_truncated;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(policyNameAtIndex:) propertyName:@"policyNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPolicyName:) propertyName:@"policyNames"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSResponse JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"policyNames": @"PolicyNames",
        @"nextMarker": @"NextMarker",
        @"truncated": @"Truncated"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop