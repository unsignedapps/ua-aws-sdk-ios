//
//  UAAWSServiceHealthOutage.m
//  AWS iOS SDK
//
//  Copyright (c) Desto 2014.
//  Created by Rob Amos.
//
//

#import "UAAWSServiceHealthOutage.h"
#import "UAAWSServiceHealthService.h"

@interface UAAWSServiceHealthOutage ()

+ (UAAWSRegion)regionForRegionName:(NSString *)name;
+ (NSString *)regionNameForRegion:(UAAWSRegion)region;

@end

@interface UAAWSServiceHealthService (InternalMethods)

+ (UAAWSService)serviceForServiceName:(NSString *)name;
+ (NSString *)serviceNameForService:(UAAWSService)service;

@end

@implementation UAAWSServiceHealthOutage

@synthesize date=_date, descriptionValue=_descriptionValue, details=_details, service=_service, region=_region, serviceName=_serviceName, type=_type, summary=_summary;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return
    @{
        @"date":                @"date",
        @"descriptionValue":    @"description",
        @"details":             @"details",
        @"service":             @"service",
        @"region":              @"service",
        @"serviceName":         @"service_name",
        @"type":                @"status",
        @"summary":             @"summary"
    };
}

+ (NSValueTransformer *)dateJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSDate *(NSNumber *input)
    {
        return [NSDate dateWithTimeIntervalSince1970:[input integerValue]];

    } reverseBlock:^NSNumber *(NSDate *date)
    {
        return [NSNumber numberWithInteger:[date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)serviceJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *input)
    {
        if (input == nil)
            return nil;
        
        
        // just a service name, not region specific?
        if ([input rangeOfString:@"-"].location == NSNotFound)
            return @([UAAWSServiceHealthService serviceForServiceName:input]);
        
        // the service part is up to the first dash
        NSString *service = [input substringToIndex:[input rangeOfString:@"-"].location];
        
        return @([UAAWSServiceHealthService serviceForServiceName:service]);
        
    } reverseBlock:^NSString *(NSNumber *input)
    {
        UAAWSService service = (UAAWSService)[input unsignedIntegerValue];
        if (service == UAAWSServiceUnknown)
            return @"";
        
        return [UAAWSServiceHealthService serviceNameForService:service];
    }];
}

+ (NSValueTransformer *)regionJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *input)
    {
        if (input == nil)
            return nil;
        
        // just a service name, not region specific?
        if ([input rangeOfString:@"-"].location == NSNotFound)
            return @(UAAWSRegionUnknown);
        
        // the region part is after the first dash
        NSString *region = [input substringFromIndex:([input rangeOfString:@"-"].location+1)];
        
        return @([UAAWSServiceHealthOutage regionForRegionName:region]);
        
    } reverseBlock:^NSString *(NSNumber *input)
    {
        UAAWSRegion region = (UAAWSRegion)[input unsignedIntegerValue];
        if (region == UAAWSRegionUnknown)
            return @"";
        
        return [UAAWSServiceHealthOutage regionNameForRegion:region];
    }];
}

+ (NSValueTransformer *)typeJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(id input)
    {
        if ([input isKindOfClass:[NSNumber class]])
            return input;
        
        else if ([input isKindOfClass:[NSString class]])
            return [NSNumber numberWithDouble:[((NSString *)input) doubleValue]];
        
        return nil;

    } reverseBlock:^NSNumber *(NSNumber *input)
    {
        return input;
    }];
}

+ (NSValueTransformer *)descriptionValueJSONTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSAttributedString *(NSString *input)
    {
        // the span's denote the titles, which should be bold instead of yellow.
        NSMutableString *string = [input mutableCopy];
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"<span[^>]*?>" options:NSRegularExpressionCaseInsensitive error:nil];
        [regex replaceMatchesInString:string options:kNilOptions range:NSMakeRange(0, string.length) withTemplate:@"<b>"];
        
        [string replaceOccurrencesOfString:@"</span>" withString:@"</b>" options:kNilOptions range:NSMakeRange(0, string.length)];
        UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        
        return [[NSAttributedString alloc] initWithData:[string dataUsingEncoding:NSUTF8StringEncoding]
                                                options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSDefaultAttributesDocumentAttribute: @{ NSFontAttributeName: font } }
                                     documentAttributes:NULL
                                                  error:nil];

    } reverseBlock:^NSString *(NSAttributedString *input)
    {
        return [input string];
    }];
}

#pragma mark - Region Parsing

+ (UAAWSRegion)regionForRegionName:(NSString *)name
{
    if (name == nil)
        return UAAWSRegionUnknown;
    
    NSDictionary *names =
    @{
        @"ap-northeast-1": @(UAAWSRegionAPNortheast1),
        @"ap-southeast-1": @(UAAWSRegionAPSoutheast1),
        @"ap-southeast-2": @(UAAWSRegionAPSoutheast2),
        @"cn-north-1": @(UAAWSRegionCNNorth1),
        @"eu-west-1": @(UAAWSRegionEUWest1),
        @"sa-east-1": @(UAAWSRegionSAEast1),
        @"us-east-1": @(UAAWSRegionUSEast1),
        @"us-gov-west-1": @(UAAWSRegionUSGovWest1),
        @"us-standard": @(UAAWSRegionUSEast1),
        @"us-west-1": @(UAAWSRegionUSWest1),
        @"us-west-2": @(UAAWSRegionUSWest2),
    };

    NSNumber *regionNumber = [names objectForKey:name];
    return regionNumber == nil ? UAAWSRegionUnknown : (UAAWSRegion)[regionNumber unsignedIntegerValue];
}

+ (NSString *)regionNameForRegion:(UAAWSRegion)region
{
    switch (region)
    {
        case UAAWSRegionAPNortheast1:
            return @"ap-northeast-1";

        case UAAWSRegionAPSoutheast1:
            return @"ap-southeast-1";
            
        case UAAWSRegionAPSoutheast2:
            return @"ap-southeast-2";
            
        case UAAWSRegionCNNorth1:
            return @"cn-north-1";
            
        case UAAWSRegionEUWest1:
            return @"eu-west-1";
            
        case UAAWSRegionSAEast1:
            return @"sa-east-1";
            
        case UAAWSRegionUSEast1:
            return @"us-east-1";
            
        case UAAWSRegionUSGovWest1:
            return @"us-gov-west-1";
            
        case UAAWSRegionUSWest1:
            return @"us-west-1";
            
        case UAAWSRegionUSWest2:
            return @"us-west-2";
            
        default:
            return nil;
    }
}

@end
