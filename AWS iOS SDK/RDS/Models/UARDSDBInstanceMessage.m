//
//  UARDSDBInstanceMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBInstanceMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBInstance.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBInstanceMessage

@synthesize marker=_marker, dBInstances=_dBInstances;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBInstanceAtIndex:) propertyName:@"dBInstances"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBInstance:) propertyName:@"dBInstances"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBInstanceMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"dBInstances": @"Rds:DBInstances/Rds:DBInstance"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBInstancesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBInstance class]];
}

+ (NSValueTransformer *)dBInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBInstance class]];
}

@end

#pragma clang diagnostic pop