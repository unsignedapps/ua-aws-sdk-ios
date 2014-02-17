//
//  UAIAMGetServerCertificateResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMGetServerCertificateResponse.h"
#import "UAIAMServerCertificateMetadata.h"
#import "UAIAMServerCertificate.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMGetServerCertificateResponseSpec)

describe(@"UAIAMGetServerCertificateResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMGetServerCertificateResponse *getServerCertificateResponse = [MTLXMLAdapter modelOfClass:[UAIAMGetServerCertificateResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[getServerCertificateResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END