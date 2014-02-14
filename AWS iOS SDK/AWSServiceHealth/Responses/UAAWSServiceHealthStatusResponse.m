//
//  UAAWSServiceHealthStatusResponse.m
//  AWS iOS SDK
//
//  Copyright (c) Desto 2014.
//  Created by Rob Amos.
//
//

#import "UAAWSServiceHealthStatusResponse.h"
#import "UAAWSServiceHealthOutage.h"
#import "UAAWSServiceHealthService.h"

@interface UAAWSServiceHealthService (InternalMethods)

- (id)initWithService:(UAAWSService)service currentOutages:(NSArray *)currentOutages recentOutages:(NSArray *)recentOutages;

@end

@implementation UAAWSServiceHealthStatusResponse

@synthesize currentOutages=_currentOutages, recentOutages=_recentOutages;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return
    @{
        @"recentOutages":   @"archive",
        @"currentOutages":   @"current"
    };
}

+ (NSValueTransformer *)recentOutagesJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAAWSServiceHealthOutage class]];
}

+ (NSValueTransformer *)currentOutagesJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[UAAWSServiceHealthOutage class]];
}

#pragma mark - Querying Recent Outages

- (NSArray *)recentOutagesAffectingService:(UAAWSService)service inRegion:(UAAWSRegion)region
{
    if (self.recentOutages == nil || [self.recentOutages count] == 0)
        return nil;
    
    NSMutableArray *outages = [[NSMutableArray alloc] initWithCapacity:0];
    for (UAAWSServiceHealthOutage *outage in self.recentOutages)
    {
        if ((region == UAAWSRegionUnknown || outage.region == region) && (service == UAAWSServiceUnknown || outage.service == service))
            [outages addObject:outage];
    }
    
    return [outages count] > 0 ? [outages copy] : nil;
}

- (NSArray *)recentOutagesAffectingRegion:(UAAWSRegion)region
{
    return [self recentOutagesAffectingService:UAAWSServiceUnknown inRegion:region];
}

- (NSArray *)recentOutagesAffectingService:(UAAWSService)service
{
    return [self recentOutagesAffectingService:service inRegion:UAAWSRegionUnknown];
}

#pragma mark - Querying Current Outages

- (NSArray *)currentOutagesAffectingService:(UAAWSService)service inRegion:(UAAWSRegion)region
{
    if (self.currentOutages == nil || [self.currentOutages count] == 0)
        return nil;
    
    NSMutableArray *outages = [[NSMutableArray alloc] initWithCapacity:0];
    for (UAAWSServiceHealthOutage *outage in self.currentOutages)
    {
        if ((region == UAAWSRegionUnknown || outage.region == region) && (service == UAAWSServiceUnknown || outage.service == service))
            [outages addObject:outage];
    }
    
    return [outages count] > 0 ? [outages copy] : nil;
}

- (NSArray *)currentOutagesAffectingRegion:(UAAWSRegion)region
{
    return [self currentOutagesAffectingService:UAAWSServiceUnknown inRegion:region];
}

- (NSArray *)currentOutagesAffectingService:(UAAWSService)service
{
    return [self currentOutagesAffectingService:service inRegion:UAAWSRegionUnknown];
}

#pragma mark - Compiling the service outages.

- (NSArray *)allServiceStatuses
{
    return [self serviceStatusesInRegion:UAAWSRegionUnknown];
}

- (NSArray *)serviceStatusesInRegion:(UAAWSRegion)region
{
    NSMutableArray *services = [[NSMutableArray alloc] initWithCapacity:0];
    
    // skip "Unknown"
    for (UAAWSService service = UAAWSServiceAutoScaling; service <= UAAWSServiceVPC; service++)
    {
        if (region == UAAWSRegionUnknown || [UAAWSServiceHealthService isService:service availableInRegion:region])
        {
            [services addObject:[[UAAWSServiceHealthService alloc] initWithService:service
                                                                    currentOutages:[self currentOutagesAffectingService:service]
                                                                     recentOutages:[self recentOutagesAffectingService:service]]];
        }
    }
    
    return services;
}

@end
