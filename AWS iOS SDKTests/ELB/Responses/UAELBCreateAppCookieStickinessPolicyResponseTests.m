//
//  UAELBCreateAppCookieStickinessPolicyResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBCreateAppCookieStickinessPolicyResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBCreateAppCookieStickinessPolicyResponseSpec)

describe(@"UAELBCreateAppCookieStickinessPolicyResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBCreateAppCookieStickinessPolicyResponse *createAppCookieStickinessPolicyResponse = [MTLXMLAdapter modelOfClass:[UAELBCreateAppCookieStickinessPolicyResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createAppCookieStickinessPolicyResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END