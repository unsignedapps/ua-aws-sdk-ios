//
//  UAEC2AcceptVPCPeeringConnectionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AcceptVPCPeeringConnectionResponse.h"
#import "UAEC2AccepterVPCInfo.h"
#import "UAEC2RequesterVPCInfo.h"
#import "UAEC2Status.h"
#import "UAEC2Tag.h"
#import "UAEC2VPCPeeringConnection.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AcceptVPCPeeringConnectionResponseSpec)

describe(@"UAEC2AcceptVPCPeeringConnectionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AcceptVPCPeeringConnectionResponse *acceptVPCPeeringConnectionResponse = [MTLXMLAdapter modelOfClass:[UAEC2AcceptVPCPeeringConnectionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[acceptVPCPeeringConnectionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END