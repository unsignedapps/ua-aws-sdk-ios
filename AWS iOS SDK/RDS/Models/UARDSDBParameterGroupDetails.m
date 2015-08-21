//
//  UARDSDBParameterGroupDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBParameterGroupDetails.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSParameter.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBParameterGroupDetails

@synthesize parameters=_parameters, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(parameterAtIndex:) propertyName:@"parameters"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addParameter:) propertyName:@"parameters"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DBParameterGroupDetails/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"parameters": @"Rds:Parameters/Rds:Parameter",
        @"marker": @"Rds:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)parametersQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSParameter class]];
}

+ (NSValueTransformer *)parametersXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSParameter class]];
}

@end

#pragma clang diagnostic pop