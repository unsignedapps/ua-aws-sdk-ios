//
//  UAEC2DeleteVPNConnectionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteVPNConnectionResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteVPNConnectionResponseSpec)

describe(@"UAEC2DeleteVPNConnectionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteVPNConnectionResponse *deleteVPNConnectionResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteVPNConnectionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteVPNConnectionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END