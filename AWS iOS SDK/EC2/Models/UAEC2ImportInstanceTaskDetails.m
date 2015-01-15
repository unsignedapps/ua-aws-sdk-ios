//
//  UAEC2ImportInstanceTaskDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportInstanceTaskDetails.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ImportInstanceVolumeDetailItem.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ImportInstanceTaskDetails

@synthesize volumes=_volumes, instanceID=_instanceID, platform=_platform, descriptionValue=_descriptionValue;

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
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumes": @"ec2:volumes/ec2:item",
        @"instanceID": @"ec2:instanceId",
        @"platform": @"ec2:platform",
        @"descriptionValue": @"ec2:description"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)volumesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2ImportInstanceVolumeDetailItem class]];
}

+ (NSValueTransformer *)volumesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ImportInstanceVolumeDetailItem class]];
}

@end

#pragma clang diagnostic pop