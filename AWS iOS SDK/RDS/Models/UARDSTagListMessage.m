//
//  UARDSTagListMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSTagListMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSTagList.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSTagListMessage

@synthesize tagList=_tagList;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagListAtIndex:) propertyName:@"tagList"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTagList:) propertyName:@"tagList"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:TagListMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"tagList": @"Rds:TagList/Rds:Tag"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagListQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSTagList class]];
}

+ (NSValueTransformer *)tagListXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSTagList class]];
}

@end

#pragma clang diagnostic pop