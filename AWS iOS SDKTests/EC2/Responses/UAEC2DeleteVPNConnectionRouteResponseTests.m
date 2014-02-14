//
//  UAEC2DeleteVPNConnectionRouteResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteVPNConnectionRouteResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteVPNConnectionRouteResponseSpec)

describe(@"UAEC2DeleteVPNConnectionRouteResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteVPNConnectionRouteResponse *deleteVPNConnectionRouteResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteVPNConnectionRouteResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteVPNConnectionRouteResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END