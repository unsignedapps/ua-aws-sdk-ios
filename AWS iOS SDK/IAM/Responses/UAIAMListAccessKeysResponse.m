//
//  UAIAMListAccessKeysResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMListAccessKeysResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAIAMAccessKeyMetadata.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAIAMListAccessKeysResponse

@synthesize accessKeyMetadata=_accessKeyMetadata, isTruncated=_isTruncated, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(accessKeyMetadataAtIndex:) propertyName:@"accessKeyMetadata"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addAccessKeyMetadata:) propertyName:@"accessKeyMetadata"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./iam:ListAccessKeysResponse/iam:ListAccessKeysResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"accessKeyMetadata": @"iam:AccessKeyMetadata/iam:member",
        @"isTruncated": @"iam:IsTruncated",
        @"marker": @"iam:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)accessKeyMetadataXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAIAMAccessKeyMetadata class]];
}

+ (NSValueTransformer *)isTruncatedXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop