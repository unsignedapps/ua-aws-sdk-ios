//
//  UAASModel.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAASModel.h"

@implementation UAASModel

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
    return @{ @"AutoScaling": @"http://autoscaling.amazonaws.com/doc/2011-01-01/" };
}

@end
