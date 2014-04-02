//
//  UAEC2AccountAttribute.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AccountAttribute.h"

@implementation UAEC2AccountAttribute

@synthesize attributeName=_attributeName, attributeValues=_attributeValues;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attributeName": @"ec2:attributeName",
        @"attributeValues": @"ec2:attributeValueSet/ec2:item/ec2:attributeValue"
    }];
    return [keyPaths copy];
}

- (NSString *)attributeValueAtIndex:(NSUInteger)index
{
    if (self.attributeValues == nil || index >= ([self.attributeValues count]-1))
        return nil;

    return [self.attributeValues objectAtIndex:index];
}

+ (NSValueTransformer *)attributeValuesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
