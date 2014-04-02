//
//  UASNSListPlatformApplicationsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSListPlatformApplicationsResponse.h"
#import "UASNSPlatformApplication.h"

@implementation UASNSListPlatformApplicationsResponse

@synthesize platformApplications=_platformApplications, nextToken=_nextToken;

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

- (UASNSPlatformApplication *)platformApplicationAtIndex:(NSUInteger)index
{
    if (self.platformApplications == nil || index >= ([self.platformApplications count]-1))
        return nil;

    return [self.platformApplications objectAtIndex:index];
}

+ (NSValueTransformer *)platformApplicationsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UASNSPlatformApplication class]];
}

@end
