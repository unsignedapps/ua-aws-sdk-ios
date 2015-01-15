//
//  UASNSListPlatformApplicationsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListPlatformApplicationsResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UASNSPlatformApplication.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UASNSListPlatformApplicationsResponse

@synthesize platformApplications=_platformApplications, nextToken=_nextToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(platformApplicationAtIndex:) propertyName:@"platformApplications"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPlatformApplication:) propertyName:@"platformApplications"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Sns:ListPlatformApplicationsResponse/Sns:ListPlatformApplicationsResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UASNSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"platformApplications": @"Sns:PlatformApplications/Sns:member",
        @"nextToken": @"Sns:NextToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)platformApplicationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASNSPlatformApplication class]];
}

@end

#pragma clang diagnostic pop