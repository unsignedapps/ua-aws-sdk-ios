//
//  UAIAMModel.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAIAMModel.h"

@implementation UAIAMModel

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
    return @{ @"iam": @"https://iam.amazonaws.com/doc/2010-05-08/" };
}

@end
