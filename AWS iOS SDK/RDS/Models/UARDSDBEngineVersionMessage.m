//
//  UARDSDBEngineVersionMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBEngineVersionMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBEngineVersion.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBEngineVersionMessage

@synthesize marker=_marker, dBEngineVersions=_dBEngineVersions;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBEngineVersionAtIndex:) propertyName:@"dBEngineVersions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBEngineVersion:) propertyName:@"dBEngineVersions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBEngineVersionMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"dBEngineVersions": @"Rds:DBEngineVersions/Rds:DBEngineVersion"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBEngineVersionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBEngineVersion class]];
}

+ (NSValueTransformer *)dBEngineVersionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBEngineVersion class]];
}

@end

#pragma clang diagnostic pop