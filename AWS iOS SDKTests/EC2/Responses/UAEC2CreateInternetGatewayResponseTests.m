//
//  UAEC2CreateInternetGatewayResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateInternetGatewayResponse.h"
#import "UAEC2Attachment.h"
#import "UAEC2Tag.h"
#import "UAEC2InternetGateway.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateInternetGatewayResponseSpec)

describe(@"UAEC2CreateInternetGatewayResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateInternetGatewayResponse *createInternetGatewayResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateInternetGatewayResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createInternetGatewayResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END