//
//  UAEC2TerminateInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2TerminateInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InstanceStateChange.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2TerminateInstancesResponse

@synthesize terminatingInstances=_terminatingInstances;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(terminatingInstanceAtIndex:) propertyName:@"terminatingInstances"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:TerminateInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"terminatingInstances": @"ec2:instancesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)terminatingInstancesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceStateChange class]];
}

@end

#pragma clang diagnostic pop