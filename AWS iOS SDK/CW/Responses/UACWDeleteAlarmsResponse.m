//
//  UACWDeleteAlarmsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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
