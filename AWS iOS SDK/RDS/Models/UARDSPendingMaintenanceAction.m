//
//  UARDSPendingMaintenanceAction.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSPendingMaintenanceAction.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSPendingMaintenanceActionDetail.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSPendingMaintenanceAction

@synthesize resourceIdentifier=_resourceIdentifier, pendingMaintenanceActionDetails=_pendingMaintenanceActionDetails;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(pendingMaintenanceActionDetailAtIndex:) propertyName:@"pendingMaintenanceActionDetails"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPendingMaintenanceActionDetail:) propertyName:@"pendingMaintenanceActionDetails"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"resourceIdentifier": @"Rds:ResourceIdentifier",
        @"pendingMaintenanceActionDetails": @"Rds:PendingMaintenanceActionDetails/Rds:PendingMaintenanceAction"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)pendingMaintenanceActionDetailsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSPendingMaintenanceActionDetail class]];
}

+ (NSValueTransformer *)pendingMaintenanceActionDetailsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSPendingMaintenanceActionDetail class]];
}

@end

#pragma clang diagnostic pop