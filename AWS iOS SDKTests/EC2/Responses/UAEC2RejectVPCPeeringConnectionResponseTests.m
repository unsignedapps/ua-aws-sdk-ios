//
//  UAEC2RejectVPCPeeringConnectionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2RejectVPCPeeringConnectionResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2RejectVPCPeeringConnectionResponseSpec)

describe(@"UAEC2RejectVPCPeeringConnectionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2RejectVPCPeeringConnectionResponse *rejectVPCPeeringConnectionResponse = [MTLXMLAdapter modelOfClass:[UAEC2RejectVPCPeeringConnectionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[rejectVPCPeeringConnectionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END