//
//  UARDSDescribeDBLogFilesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDescribeDBLogFilesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDescribeDBLogFile.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDescribeDBLogFilesResponse

@synthesize describeDBLogFiles=_describeDBLogFiles, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(describeDBLogFileAtIndex:) propertyName:@"describeDBLogFiles"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDescribeDBLogFile:) propertyName:@"describeDBLogFiles"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:DescribeDBLogFilesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"describeDBLogFiles": @"Rds:DescribeDBLogFiles/Rds:DescribeDBLogFilesDetails",
        @"marker": @"Rds:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)describeDBLogFilesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSDescribeDBLogFile class]];
}

@end

#pragma clang diagnostic pop