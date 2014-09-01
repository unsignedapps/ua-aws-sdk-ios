//
//  UAEC2AccountAttribute.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2AccountAttribute.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2AccountAttribute

@synthesize attributeName=_attributeName, attributeValues=_attributeValues;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(attributeValueAtIndex:) propertyName:@"attributeValues"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAttributeValue:) propertyName:@"attributeValues"];
	}
	return self;
}

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

+ (NSValueTransformer *)attributeValuesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end

#pragma clang diagnostic pop