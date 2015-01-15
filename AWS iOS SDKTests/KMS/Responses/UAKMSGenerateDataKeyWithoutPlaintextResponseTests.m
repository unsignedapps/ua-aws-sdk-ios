//
//  UAKMSGenerateDataKeyWithoutPlaintextResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSGenerateDataKeyWithoutPlaintextResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSGenerateDataKeyWithoutPlaintextResponseSpec)

describe(@"UAKMSGenerateDataKeyWithoutPlaintextResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSGenerateDataKeyWithoutPlaintextResponse *generateDataKeyWithoutPlaintextResponse = [MTLJSONAdapter modelOfClass:[UAKMSGenerateDataKeyWithoutPlaintextResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[generateDataKeyWithoutPlaintextResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END