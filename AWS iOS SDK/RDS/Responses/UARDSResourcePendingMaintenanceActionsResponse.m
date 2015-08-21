//
//  UARDSResourcePendingMaintenanceActionsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSResourcePendingMaintenanceActionsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSResourcePendingMaintenanceActions.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSResourcePendingMaintenanceActionsResponse

@synthesize resourcePendingMaintenanceActions=_resourcePendingMaintenanceActions;

+ (NSString *)XPathPrefix
{
    return @"./Rds:ResourcePendingMaintenanceActionsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"resourcePendingMaintenanceActions": @"Rds:ResourcePendingMaintenanceActions"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)resourcePendingMaintenanceActionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSResourcePendingMaintenanceActions class]];
}

@end

#pragma clang diagnostic pop