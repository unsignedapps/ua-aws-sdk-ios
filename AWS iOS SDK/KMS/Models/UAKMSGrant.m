//
//  UAKMSGrant.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSGrant.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAKMSConstraints.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAKMSGrant

@synthesize grantID=_grantID, granteePrincipal=_granteePrincipal, retiringPrincipal=_retiringPrincipal, issuingAccount=_issuingAccount, operations=_operations, constraints=_constraints;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(operationAtIndex:) propertyName:@"operations"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addOperation:) propertyName:@"operations"];
	}
	return self;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAKMSModel JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"grantID": @"GrantId",
        @"granteePrincipal": @"GranteePrincipal",
        @"retiringPrincipal": @"RetiringPrincipal",
        @"issuingAccount": @"IssuingAccount",
        @"operations": @"Operations",
        @"constraints": @"Constraints"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)constraintsJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAKMSConstraints class]];
}

@end

#pragma clang diagnostic pop