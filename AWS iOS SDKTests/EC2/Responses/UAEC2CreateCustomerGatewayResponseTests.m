//
//  UAEC2CreateCustomerGatewayResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateCustomerGatewayResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2CustomerGateway.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateCustomerGatewayResponseSpec)

describe(@"UAEC2CreateCustomerGatewayResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateCustomerGatewayResponse *createCustomerGatewayResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateCustomerGatewayResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createCustomerGatewayResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END