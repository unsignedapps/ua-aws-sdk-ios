//
//  UARDSDownloadDBLogFilePortionDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDownloadDBLogFilePortionDetails.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDownloadDBLogFilePortionDetails

@synthesize logFileData=_logFileData, marker=_marker, additionalDataPending=_additionalDataPending;

+ (NSString *)XPathPrefix
{
    return @"./Rds:DownloadDBLogFilePortionDetails/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"logFileData": @"Rds:LogFileData",
        @"marker": @"Rds:Marker",
        @"additionalDataPending": @"Rds:AdditionalDataPending"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)additionalDataPendingXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop