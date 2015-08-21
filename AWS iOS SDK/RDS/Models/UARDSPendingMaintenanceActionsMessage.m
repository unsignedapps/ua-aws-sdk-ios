//
//  UARDSPendingMaintenanceActionsMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSPendingMaintenanceActionsMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSPendingMaintenanceAction.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSPendingMaintenanceActionsMessage

@synthesize pendingMaintenanceActions=_pendingMaintenanceActions, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(pendingMaintenanceActionAtIndex:) propertyName:@"pendingMaintenanceActions"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPendingMaintenanceAction:) propertyName:@"pendingMaintenanceActions"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:PendingMaintenanceActionsMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"pendingMaintenanceActions": @"Rds:PendingMaintenanceActions/Rds:ResourcePendingMaintenanceActions",
        @"marker": @"Rds:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)pendingMaintenanceActionsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSPendingMaintenanceAction class]];
}

+ (NSValueTransformer *)pendingMaintenanceActionsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSPendingMaintenanceAction class]];
}

@end

#pragma clang diagnostic pop