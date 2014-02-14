//
//  UAEC2CustomerGatewayyTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CustomerGatewayy.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CustomerGatewayySpec)

describe(@"UAEC2CustomerGatewayy", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CustomerGatewayy *customerGatewayy = [MTLXMLAdapter modelOfClass:[UAEC2CustomerGatewayy class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[customerGatewayy should] beNonNil];

	    // additional verification
	});

});

SPEC_END