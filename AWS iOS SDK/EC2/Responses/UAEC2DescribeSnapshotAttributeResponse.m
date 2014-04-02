//
//  UAEC2DescribeSnapshotAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeSnapshotAttributeResponse.h"
#import "UAEC2CreateVolumePermission.h"
#import "UAEC2ProductCode.h"

@implementation UAEC2DescribeSnapshotAttributeResponse

@synthesize snapshotID=_snapshotID, createVolumePermissions=_createVolumePermissions, productCodes=_productCodes;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeSnapshotAttributeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"snapshotID": @"ec2:snapshotId",
        @"createVolumePermissions": @"ec2:createVolumePermission/ec2:item",
        @"productCodes": @"ec2:productCodes/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2CreateVolumePermission *)createVolumePermissionAtIndex:(NSUInteger)index
{
    if (self.createVolumePermissions == nil || index >= ([self.createVolumePermissions count]-1))
        return nil;

    return [self.createVolumePermissions objectAtIndex:index];
}

- (UAEC2ProductCode *)productCodeAtIndex:(NSUInteger)index
{
    if (self.productCodes == nil || index >= ([self.productCodes count]-1))
        return nil;

    return [self.productCodes objectAtIndex:index];
}

+ (NSValueTransformer *)createVolumePermissionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2CreateVolumePermission class]];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

@end
