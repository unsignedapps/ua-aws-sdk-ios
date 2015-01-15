//
//  UAEC2DescribeKeyPairsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeKeyPairsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2KeyPair.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeKeyPairsResponse

@synthesize keyPairs=_keyPairs;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(keyPairAtIndex:) propertyName:@"keyPairs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addKeyPair:) propertyName:@"keyPairs"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeKeyPairsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"keyPairs": @"ec2:keySet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)keyPairsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2KeyPair class]];
}

@end

#pragma clang diagnostic pop