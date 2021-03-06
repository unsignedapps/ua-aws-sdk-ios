//
//  UAASDescribeScalingProcessTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeScalingProcessTypesResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAASProcessType.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAASDescribeScalingProcessTypesResponse

@synthesize processes=_processes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(processAtIndex:) propertyName:@"processes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addProcess:) propertyName:@"processes"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeScalingProcessTypesResponse/AutoScaling:DescribeScalingProcessTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"processes": @"AutoScaling:Processes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)processesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASProcessType class]];
}

@end

#pragma clang diagnostic pop