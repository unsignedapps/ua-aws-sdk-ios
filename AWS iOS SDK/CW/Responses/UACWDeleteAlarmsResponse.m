//
//  UACWDeleteAlarmsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UACWDeleteAlarmsResponse.h"

@implementation UACWDeleteAlarmsResponse

+ (NSString *)XPathPrefix
{
    return @"./cloudwatch:DeleteAlarmsResponse/cloudwatch:DeleteAlarmsResult/";
}

@end
