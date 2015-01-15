//
//  NSString+UAAWSRegions.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 17/02/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "NSString+UAAWSRegions.h"

@implementation NSString (UAAWSRegions)

- (UAAWSRegion)UA_regionValue
{
    if ([self isEqualToString:@"us-east-1"])
        return UAAWSRegionUSEast1;
    if ([self isEqualToString:@"us-west-1"])
        return UAAWSRegionUSWest1;
    if ([self isEqualToString:@"us-west-2"])
        return UAAWSRegionUSWest2;
    if ([self isEqualToString:@"eu-west-1"])
        return UAAWSRegionEUWest1;
    if ([self isEqualToString:@"eu-central-1"])
        return UAAWSRegionEUCentral1;
    if ([self isEqualToString:@"ap-northeast-1"])
        return UAAWSRegionAPNortheast1;
    if ([self isEqualToString:@"ap-southeast-1"])
        return UAAWSRegionAPSoutheast1;
    if ([self isEqualToString:@"ap-southeast-2"])
        return UAAWSRegionAPSoutheast2;
    if ([self isEqualToString:@"sa-east-1"])
        return UAAWSRegionSAEast1;
    if ([self isEqualToString:@"cn-north-1"])
        return UAAWSRegionCNNorth1;
    if ([self isEqualToString:@"us-gov-west-1"])
        return UAAWSRegionUSGovWest1;
    
    return UAAWSRegionUnknown;
}

+ (NSString *)UA_regionStringForRegionValue:(UAAWSRegion)region
{
    switch (region)
    {
        case UAAWSRegionUSEast1:
            return @"us-east-1";
            
        case UAAWSRegionUSWest1:
            return @"us-west-1";
            
        case UAAWSRegionUSWest2:
            return @"us-west-2";
            
        case UAAWSRegionEUWest1:
            return @"eu-west-1";

        case UAAWSRegionEUCentral1:
            return @"eu-central-1";

        case UAAWSRegionAPNortheast1:
            return @"ap-northeast-1";
            
        case UAAWSRegionAPSoutheast1:
            return @"ap-southeast-1";
            
        case UAAWSRegionAPSoutheast2:
            return @"ap-southeast-2";
            
        case UAAWSRegionSAEast1:
            return @"sa-east-1";
            
        case UAAWSRegionCNNorth1:
            return @"cn-north-1";
            
        case UAAWSRegionUSGovWest1:
            return @"us-gov-west-1";
            
        default:
            return nil;
    }
}

@end
