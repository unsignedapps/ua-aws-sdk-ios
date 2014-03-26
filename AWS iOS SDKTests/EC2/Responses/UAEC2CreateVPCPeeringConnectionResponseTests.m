//
//  UAEC2CreateVPCPeeringConnectionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateVPCPeeringConnectionResponse.h"
#import "UAEC2AccepterVPCInfo.h"
#import "UAEC2RequesterVPCInfo.h"
#import "UAEC2Status.h"
#import "UAEC2Tag.h"
#import "UAEC2VPCPeeringConnection.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateVPCPeeringConnectionResponseSpec)

describe(@"UAEC2CreateVPCPeeringConnectionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateVPCPeeringConnectionResponse *createVPCPeeringConnectionResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateVPCPeeringConnectionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createVPCPeeringConnectionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END