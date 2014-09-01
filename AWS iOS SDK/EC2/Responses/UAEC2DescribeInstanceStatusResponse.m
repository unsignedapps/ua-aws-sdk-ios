//
//  UAEC2DescribeInstanceStatusResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeInstanceStatusResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InstanceStatus.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeInstanceStatusResponse

@synthesize instanceStatuses=_instanceStatuses, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(instanceStatusAtIndex:) propertyName:@"instanceStatuses"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addInstanceStatus:) propertyName:@"instanceStatuses"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeInstanceStatusResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceStatuses": @"ec2:instanceStatusSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)instanceStatusesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceStatus class]];
}

@end

#pragma clang diagnostic pop