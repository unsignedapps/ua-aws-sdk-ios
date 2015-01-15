//
//  UAKMSGenerateDataKeyWithoutPlaintextRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSGenerateDataKeyWithoutPlaintextRequest.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSGenerateDataKeyWithoutPlaintextRequestSpec)

describe(@"UAKMSGenerateDataKeyWithoutPlaintextRequest", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSGenerateDataKeyWithoutPlaintextRequest *generateDataKeyWithoutPlaintextRequest = [MTLJSONAdapter modelOfClass:[UAKMSGenerateDataKeyWithoutPlaintextRequest class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[generateDataKeyWithoutPlaintextRequest should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END