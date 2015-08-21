//
//  UARDSDBSecurityGroupMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSecurityGroupMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSecurityGroup.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSecurityGroupMessage

@synthesize marker=_marker, dBSecurityGroups=_dBSecurityGroups;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSecurityGroupAtIndex:) propertyName:@"dBSecurityGroups"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSecurityGroup:) propertyName:@"dBSecurityGroups"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBSecurityGroupMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"dBSecurityGroups": @"Rds:DBSecurityGroups/Rds:DBSecurityGroup"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBSecurityGroupsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBSecurityGroup class]];
}

+ (NSValueTransformer *)dBSecurityGroupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBSecurityGroup class]];
}

@end

#pragma clang diagnostic pop