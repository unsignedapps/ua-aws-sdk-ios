//
//  UAIAMListOpenIDConnectProvidersResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMListOpenIDConnectProvidersResponse.h"
#import "UAIAMOpenIDConnectProviderList.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMListOpenIDConnectProvidersResponseSpec)

describe(@"UAIAMListOpenIDConnectProvidersResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMListOpenIDConnectProvidersResponse *listOpenIDConnectProvidersResponse = [MTLXMLAdapter modelOfClass:[UAIAMListOpenIDConnectProvidersResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listOpenIDConnectProvidersResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END