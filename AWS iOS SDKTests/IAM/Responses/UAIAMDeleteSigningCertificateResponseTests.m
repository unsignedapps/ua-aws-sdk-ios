//
//  UAIAMDeleteSigningCertificateResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMDeleteSigningCertificateResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMDeleteSigningCertificateResponseSpec)

describe(@"UAIAMDeleteSigningCertificateResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMDeleteSigningCertificateResponse *deleteSigningCertificateResponse = [MTLXMLAdapter modelOfClass:[UAIAMDeleteSigningCertificateResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteSigningCertificateResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END