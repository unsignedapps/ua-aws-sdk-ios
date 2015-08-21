//
//  UARDSAccountAttributesMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSAccountAttributesMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSAccountQuota.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSAccountAttributesMessage

@synthesize accountQuotas=_accountQuotas;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(accountQuotaAtIndex:) propertyName:@"accountQuotas"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAccountQuota:) propertyName:@"accountQuotas"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:AccountAttributesMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"accountQuotas": @"Rds:AccountQuotas/Rds:AccountQuota"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accountQuotasQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSAccountQuota class]];
}

+ (NSValueTransformer *)accountQuotasXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSAccountQuota class]];
}

@end

#pragma clang diagnostic pop