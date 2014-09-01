//
//  UAEC2RequestSpotInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RequestSpotInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2SpotInstanceRequest.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2RequestSpotInstancesResponse

@synthesize spotInstanceRequests=_spotInstanceRequests;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(spotInstanceRequestAtIndex:) propertyName:@"spotInstanceRequests"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSpotInstanceRequest:) propertyName:@"spotInstanceRequests"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:RequestSpotInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"spotInstanceRequests": @"ec2:spotInstanceRequestSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)spotInstanceRequestsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2SpotInstanceRequest class]];
}

@end

#pragma clang diagnostic pop