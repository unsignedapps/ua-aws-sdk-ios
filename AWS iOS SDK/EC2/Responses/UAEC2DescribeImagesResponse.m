//
//  UAEC2DescribeImagesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeImagesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Image.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeImagesResponse

@synthesize images=_images;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(imageAtIndex:) propertyName:@"images"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addImage:) propertyName:@"images"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeImagesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"images": @"ec2:imagesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)imagesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Image class]];
}

@end

#pragma clang diagnostic pop