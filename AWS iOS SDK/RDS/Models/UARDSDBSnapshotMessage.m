//
//  UARDSDBSnapshotMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSnapshotMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSnapshot.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSnapshotMessage

@synthesize marker=_marker, dBSnapshots=_dBSnapshots;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(dBSnapshotAtIndex:) propertyName:@"dBSnapshots"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDBSnapshot:) propertyName:@"dBSnapshots"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBSnapshotMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"marker": @"Rds:Marker",
        @"dBSnapshots": @"Rds:DBSnapshots/Rds:DBSnapshot"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBSnapshotsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSDBSnapshot class]];
}

+ (NSValueTransformer *)dBSnapshotsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDBSnapshot class]];
}

@end

#pragma clang diagnostic pop