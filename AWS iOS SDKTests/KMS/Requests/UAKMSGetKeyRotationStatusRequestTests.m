//
//  UAKMSGetKeyRotationStatusRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSGetKeyRotationStatusRequest.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSGetKeyRotationStatusRequestSpec)

describe(@"UAKMSGetKeyRotationStatusRequest", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSGetKeyRotationStatusRequest *getKeyRotationStatusRequest = [MTLJSONAdapter modelOfClass:[UAKMSGetKeyRotationStatusRequest class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[getKeyRotationStatusRequest should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END