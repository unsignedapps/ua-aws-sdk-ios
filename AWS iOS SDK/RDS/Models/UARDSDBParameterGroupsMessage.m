//
//  UARDSDBParameterGroupsMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBParameterGroupsMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBParameterGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBParameterGroupsMessage

@synthesize marker=_marker, dBParameterGroups=_dBParameterGroups;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBParameterGroupAtIndex:) propertyName:@"dBParameterGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBParameterGroup:) propertyName:@"dBParameterGroups"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBParameterGroupsMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"dBParameterGroups": @"Rds:DBParameterGroups/Rds:DBParameterGroup"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBParameterGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBParameterGroup class]];
}

+ (NSValueTransformer *)dBParameterGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBParameterGroup class]];
}

@end

#pragma clang diagnostic pop