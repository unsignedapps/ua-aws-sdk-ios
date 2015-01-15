//
//  UAIAMGetCredentialReportResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMGetCredentialReportResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMGetCredentialReportResponseSpec)

describe(@"UAIAMGetCredentialReportResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMGetCredentialReportResponse *getCredentialReportResponse = [MTLXMLAdapter modelOfClass:[UAIAMGetCredentialReportResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[getCredentialReportResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END