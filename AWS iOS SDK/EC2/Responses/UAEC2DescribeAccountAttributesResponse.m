//
//  UAEC2DescribeAccountAttributesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeAccountAttributesResponse.h"
#import "UAEC2AccountAttribute.h"

@implementation UAEC2DescribeAccountAttributesResponse

@synthesize accountAttributes=_accountAttributes;

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

- (UAEC2AccountAttribute *)accountAttributeAtIndex:(NSUInteger)index
{
    if (self.accountAttributes == nil || index >= ([self.accountAttributes count]-1))
        return nil;

    return [self.accountAttributes objectAtIndex:index];
}

+ (NSValueTransformer *)accountAttributesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2AccountAttribute class]];
}

@end
