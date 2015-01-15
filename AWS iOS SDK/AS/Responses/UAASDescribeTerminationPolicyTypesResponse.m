//
//  UAASDescribeTerminationPolicyTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeTerminationPolicyTypesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeTerminationPolicyTypesResponse

@synthesize terminationPolicyTypes=_terminationPolicyTypes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(terminationPolicyTypeAtIndex:) propertyName:@"terminationPolicyTypes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTerminationPolicyType:) propertyName:@"terminationPolicyTypes"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeTerminationPolicyTypesResponse/AutoScaling:DescribeTerminationPolicyTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"terminationPolicyTypes": @"AutoScaling:TerminationPolicyTypes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)terminationPolicyTypesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop