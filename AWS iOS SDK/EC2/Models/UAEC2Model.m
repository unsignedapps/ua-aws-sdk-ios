//
//  UAEC2Model.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 31/01/2014.
//
//

#import "UAEC2Model.h"

@implementation UAEC2Model

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

+ (NSString *)XPathPrefix
{
    return nil;
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"ec2": @"http://ec2.amazonaws.com/doc/2014-02-01/" };
}

@end
