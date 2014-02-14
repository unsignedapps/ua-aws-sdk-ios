//
//  UAEC2DeleteInternetGatewayResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteInternetGatewayResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteInternetGatewayResponseSpec)

describe(@"UAEC2DeleteInternetGatewayResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteInternetGatewayResponse *deleteInternetGatewayResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteInternetGatewayResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteInternetGatewayResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END