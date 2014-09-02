//
//  UAMAResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMAResponse.h"

@implementation UAMAResponse

@synthesize requestID=_requestID;

+ (NSDictionary *)UAHeaderMappingsByPropertyKey
{
    return
    @{
        @"requestID":       @"x-amzn-RequestId"
    };
}

@end