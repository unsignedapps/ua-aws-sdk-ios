//
//  UAMARequest.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMARequest.h"
#import "UAMAError.h"

@implementation UAMARequest

@synthesize clientContext=_clientContext;

- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region
{
    return [NSURL URLWithString:@"https://mobileanalytics.us-east-1.amazonaws.com"];
}

- (UAAWSSignatureVersion)UA_SignatureVersion
{
    return UAAWSSignatureVersion4;
}

- (NSString *)UA_APIVersion
{
    return @"2014-06-05";
}

- (NSString *)UA_RequestPath
{
    return [NSString stringWithFormat:@"/%@/events", self.UA_APIVersion];
}

- (NSString *)UA_RequestHTTPMethod
{
    return @"POST";
}

- (Class)UA_RequestSerialisationClass
{
    return [UAMTLJSONAdapter class];
}

- (Class)UA_ResponseSerialisationClass
{
    return [UAMTLJSONAdapter class];
}

- (Class)UA_ErrorClass
{
    return [UAMAError class];
}

- (Class)UA_ResponseClass
{
    return Nil;
}

- (BOOL)UA_isRegionFree
{
    return YES;
}

- (BOOL)UA_isReadOnly
{
    // we have no read-only methods at this stage
    return NO;
}

#pragma mark - Serialization Defaults

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return
    @{
        // The client context should not appear in our request body
        @"clientContext":       [NSNull null],
        @"xAmzTarget":          [NSNull null],
    };
}

+ (NSDictionary *)UAHeaderMappingsByPropertyKey
{
    return
    @{
        // the client context *should* appear in our headers
        @"clientContext":       @"x-amz-Client-Context",
        @"xAmzTarget":          @"x-amz-target"
    };
}

#pragma mark - Initialisation Defaults

- (instancetype)init
{
    if (self = [super init])
    {
        [self setClientContext:[UAMAClientContext currentClientContext]];
    }
    return self;
}

@end
