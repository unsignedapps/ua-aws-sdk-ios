//
//  UARDSOptionGroups.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSOptionGroups.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSOptionGroupsList.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSOptionGroups

@synthesize optionGroupsList=_optionGroupsList, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(optionGroupsListAtIndex:) propertyName:@"optionGroupsList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOptionGroupsList:) propertyName:@"optionGroupsList"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:OptionGroups/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"optionGroupsList": @"Rds:OptionGroupsList/Rds:OptionGroup",
        @"marker": @"Rds:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)optionGroupsListQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSOptionGroupsList class]];
}

+ (NSValueTransformer *)optionGroupsListXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSOptionGroupsList class]];
}

@end

#pragma clang diagnostic pop