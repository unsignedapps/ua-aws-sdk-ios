//
//  UAEC2DeleteVPNGatewayResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteVPNGatewayResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteVPNGatewayResponseSpec)

describe(@"UAEC2DeleteVPNGatewayResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteVPNGatewayResponse *deleteVPNGatewayResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteVPNGatewayResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteVPNGatewayResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END