//
//  UAEC2CreateVPNGatewayResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateVPNGatewayResponse.h"
#import "UAEC2VPCAttachment.h"
#import "UAEC2Tag.h"
#import "UAEC2VPNGateway.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateVPNGatewayResponseSpec)

describe(@"UAEC2CreateVPNGatewayResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateVPNGatewayResponse *createVPNGatewayResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateVPNGatewayResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createVPNGatewayResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END