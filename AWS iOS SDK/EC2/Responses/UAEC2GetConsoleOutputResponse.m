//
//  UAEC2GetConsoleOutputResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2GetConsoleOutputResponse.h"

@implementation UAEC2GetConsoleOutputResponse

@synthesize instanceID=_instanceID, timestamp=_timestamp, output=_output;

+ (NSString *)XPathPrefix
{
    return @"./ec2:GetConsoleOutputResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instanceID": @"ec2:instanceId",
        @"timestamp": @"ec2:timestamp",
        @"output": @"ec2:output",
        @"decodedOutput": [NSNull null]
    }];
    return [keyPaths copy];
}

- (NSString *)decodedOutput
{
    if (self.output == nil)
        return nil;
    
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self.output options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (void)setDecodedOutput:(NSString *)decodedOutput
{
    if (decodedOutput == nil)
        [self setOutput:nil];
    else
		[self setOutput:[[decodedOutput dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:kNilOptions]];
}

@end
