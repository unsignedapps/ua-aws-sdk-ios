//
//  UAIAMRemoveClientIDFromOpenIDConnectProviderResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMRemoveClientIDFromOpenIDConnectProviderResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMRemoveClientIDFromOpenIDConnectProviderResponseSpec)

describe(@"UAIAMRemoveClientIDFromOpenIDConnectProviderResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMRemoveClientIDFromOpenIDConnectProviderResponse *removeClientIDFromOpenIDConnectProviderResponse = [MTLXMLAdapter modelOfClass:[UAIAMRemoveClientIDFromOpenIDConnectProviderResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[removeClientIDFromOpenIDConnectProviderResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END