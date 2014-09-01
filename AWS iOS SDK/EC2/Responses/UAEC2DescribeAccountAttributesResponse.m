//
//  UAEC2DescribeAccountAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAccountAttributesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2AccountAttribute.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeAccountAttributesResponse

@synthesize accountAttributes=_accountAttributes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(accountAttributeAtIndex:) propertyName:@"accountAttributes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAccountAttribute:) propertyName:@"accountAttributes"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeAccountAttributesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"accountAttributes": @"ec2:accountAttributeSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accountAttributesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2AccountAttribute class]];
}

@end

#pragma clang diagnostic pop