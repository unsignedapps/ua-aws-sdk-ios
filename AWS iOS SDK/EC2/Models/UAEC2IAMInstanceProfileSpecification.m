//
//  UAEC2IAMInstanceProfileSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2IAMInstanceProfileSpecification.h"

@implementation UAEC2IAMInstanceProfileSpecification

@synthesize arn=_arn, name=_name;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"arn": @"Arn",
        @"name": @"Name"
    }];
    return [keyPaths copy];
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
        @"arn": @"ec2:arn",
        @"name": @"ec2:name"
    }];
    return [keyPaths copy];
}

- (void)setArn:(NSString *)arn
{
	_arn = arn;
	
	if (![self.UA_dirtyProperties containsObject:@"arn"])
		[self.UA_dirtyProperties addObject:@"arn"];
}

- (void)setName:(NSString *)name
{
	_name = name;
	
	if (![self.UA_dirtyProperties containsObject:@"name"])
		[self.UA_dirtyProperties addObject:@"name"];
}

@end
