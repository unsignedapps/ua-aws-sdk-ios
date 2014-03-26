//
//  UAEC2DeleteVPCPeeringConnectionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteVPCPeeringConnectionResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteVPCPeeringConnectionResponseSpec)

describe(@"UAEC2DeleteVPCPeeringConnectionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteVPCPeeringConnectionResponse *deleteVPCPeeringConnectionResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteVPCPeeringConnectionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteVPCPeeringConnectionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END