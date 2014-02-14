//
//  UAEC2CreateVPNConnectionRouteResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateVPNConnectionRouteResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateVPNConnectionRouteResponseSpec)

describe(@"UAEC2CreateVPNConnectionRouteResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateVPNConnectionRouteResponse *createVPNConnectionRouteResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateVPNConnectionRouteResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createVPNConnectionRouteResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END