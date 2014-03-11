//
//  UAEC2IPRange.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2IPRange.h"

@implementation UAEC2IPRange

@synthesize cidrIP=_cidrIP;

- (id)initWithCidrIP:(NSString *)cidrIP
{
	if (self = [self init])
	{
		[self setCidrIP:cidrIP];
	}
	return self;
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"cidrIP": @"CidrIp"
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
        @"cidrIP": @"ec2:cidrIp"
    }];
    return [keyPaths copy];
}

- (void)setCidrIP:(NSString *)cidrIP
{
	_cidrIP = cidrIP;
	
	if (![self.UA_dirtyProperties containsObject:@"cidrIP"])
		[self.UA_dirtyProperties addObject:@"cidrIP"];
}

@end
