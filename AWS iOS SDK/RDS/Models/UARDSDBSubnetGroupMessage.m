//
//  UARDSDBSubnetGroupMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSubnetGroupMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSubnetGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSubnetGroupMessage

@synthesize marker=_marker, dBSubnetGroups=_dBSubnetGroups;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSubnetGroupAtIndex:) propertyName:@"dBSubnetGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSubnetGroup:) propertyName:@"dBSubnetGroups"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBSubnetGroupMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"dBSubnetGroups": @"Rds:DBSubnetGroups/Rds:DBSubnetGroup"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBSubnetGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBSubnetGroup class]];
}

+ (NSValueTransformer *)dBSubnetGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBSubnetGroup class]];
}

@end

#pragma clang diagnostic pop