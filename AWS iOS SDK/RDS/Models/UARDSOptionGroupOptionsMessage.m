//
//  UARDSOptionGroupOptionsMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionGroupOptionsMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOptionGroupOption.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionGroupOptionsMessage

@synthesize optionGroupOptions=_optionGroupOptions, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionGroupOptionAtIndex:) propertyName:@"optionGroupOptions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionGroupOption:) propertyName:@"optionGroupOptions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:OptionGroupOptionsMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"optionGroupOptions": @"Rds:OptionGroupOptions/Rds:OptionGroupOption",
        @"marker": @"Rds:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionGroupOptionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOptionGroupOption class]];
}

+ (NSValueTransformer *)optionGroupOptionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOptionGroupOption class]];
}

@end

#pragma clang diagnostic pop