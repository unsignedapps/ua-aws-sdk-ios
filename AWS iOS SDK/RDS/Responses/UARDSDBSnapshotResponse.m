//
//  UARDSDBSnapshotResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBSnapshotResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDBSnapshot.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBSnapshotResponse

@synthesize dBSnapshot=_dBSnapshot;

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBSnapshotResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"dBSnapshot": @"Rds:DBSnapshot"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)dBSnapshotXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSDBSnapshot class]];
}

@end

#pragma clang diagnostic pop