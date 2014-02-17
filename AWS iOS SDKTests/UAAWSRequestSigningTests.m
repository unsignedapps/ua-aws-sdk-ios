//
//  UAAWSRequestSigningTests.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 17/02/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "UAAWSRequestSigning.h"
#import "UAAWSCredentials.h"

@interface UAAWSRequestSigning (PrivateMethods)

+ (void)signURLRequestUsingV4:(NSMutableURLRequest *)urlRequest atDate:(NSDate *)requestDate inRegion:(UAAWSRegion)region withCredentials:(UAAWSCredentials *)credentials;

@end

SPEC_BEGIN(UAAWSRequestSigningTests)

describe(@"UAAWSRequestSigningTests", ^
{
    context(@"when testing V4 signatures", ^
    {
//        __block UAAWSRegion region = UAAWSRegionUSEast1;
//        __block UAAWSCredentials *credentials = [[UAAWSCredentials alloc] initWithAccessKey:@"AKIDEXAMPLE" secretKey:@"wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY"];
        
//        it(@"should successfully sign the get-vanilla-query-order-key test suite test", ^{
//
//            NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://host.foo.com/?a=foo&b=foo"]];
//            [UAAWSRequestSigning signURLRequestUsingV4:request atDate:[NSDate dateWithTimeIntervalSince1970:1315611360] inRegion:region withCredentials:credentials];
//            
//            // Verify those
//            [[[request valueForHTTPHeaderField:@"X-Amz-Date"] should] equal:@"20110909T23:36:00Z"];
//            [[[request valueForHTTPHeaderField:@"Authorization"] should] equal:@"Authorization: AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20110909/us-east-1/host/aws4_request, SignedHeaders=date;host, Signature=0dc122f3b28b831ab48ba65cb47300de53fbe91b577fe113edac383730254a3b"];
//        });
    });
});

SPEC_END