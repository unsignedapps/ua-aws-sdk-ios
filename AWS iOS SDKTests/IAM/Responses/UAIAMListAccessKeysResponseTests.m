//
//  UAIAMListAccessKeysResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMListAccessKeysResponse.h"
#import "UAIAMAccessKeyMetadata.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMListAccessKeysResponseSpec)

describe(@"UAIAMListAccessKeysResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMListAccessKeysResponse *listAccessKeysResponse = [MTLXMLAdapter modelOfClass:[UAIAMListAccessKeysResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listAccessKeysResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END