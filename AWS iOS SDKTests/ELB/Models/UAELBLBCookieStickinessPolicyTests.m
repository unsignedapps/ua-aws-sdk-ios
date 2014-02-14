//
//  UAELBLBCookieStickinessPolicyTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBLBCookieStickinessPolicy.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBLBCookieStickinessPolicySpec)

describe(@"UAELBLBCookieStickinessPolicy", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBLBCookieStickinessPolicy *lBCookieStickinessPolicy = [MTLXMLAdapter modelOfClass:[UAELBLBCookieStickinessPolicy class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[lBCookieStickinessPolicy should] beNonNil];

	    // additional verification
	});

});

SPEC_END