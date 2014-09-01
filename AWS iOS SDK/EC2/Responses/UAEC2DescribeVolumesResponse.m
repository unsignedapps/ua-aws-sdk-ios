//
//  UAEC2DescribeVolumesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVolumesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Volume.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeVolumesResponse

@synthesize volumes=_volumes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(volumeAtIndex:) propertyName:@"volumes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addVolume:) propertyName:@"volumes"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVolumesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumes": @"ec2:volumeSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Volume class]];
}

@end

#pragma clang diagnostic pop