//
//  UAEC2DescribeVolumeStatusResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVolumeStatusResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VolumeStatus.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeVolumeStatusResponse

@synthesize volumeStatuses=_volumeStatuses, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(volumeStatusAtIndex:) propertyName:@"volumeStatuses"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVolumeStatus:) propertyName:@"volumeStatuses"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVolumeStatusResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumeStatuses": @"ec2:volumeStatusSet/ec2:item",
        @"nextToken": @"ec2:nextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumeStatusesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VolumeStatus class]];
}

@end

#pragma clang diagnostic pop