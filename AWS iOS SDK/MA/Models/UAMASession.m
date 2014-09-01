//
//  UAMASession.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMASession.h"

@implementation UAMASession

@synthesize identifier=_identifier, startTime=_startTime;

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [[super JSONKeyPathsByPropertyKey] UAMTL_dictionaryByAddingEntriesFromDictionary:
    @{
        @"identifier":          @"id",
        @"duration":            @"duration",
        @"startTime":           @"startTimestamp",
        @"stopTime":            @"stopTimestamp"
    }];
}

+ (NSValueTransformer *)identifierJSONTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSUUID *(NSString *input)
    {
        if (input == nil || ![input isKindOfClass:[NSString class]])
            return nil;
        
        return [[NSUUID alloc] initWithUUIDString:(NSString *)input];

    } reverseBlock:^NSString *(NSUUID *input)
    {
        if (input == nil)
            return nil;
        
        return [input UUIDString];
    }];
}

+ (NSValueTransformer *)startTimeJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss.SS'Z'"];
}

+ (NSValueTransformer *)stopTimeJSONTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss.SS'Z'"];
}

@end
