//
//  UAEC2AttachClassicLinkVPCResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AttachClassicLinkVPCResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AttachClassicLinkVPCResponseSpec)

describe(@"UAEC2AttachClassicLinkVPCResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AttachClassicLinkVPCResponse *attachClassicLinkVPCResponse = [MTLXMLAdapter modelOfClass:[UAEC2AttachClassicLinkVPCResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[attachClassicLinkVPCResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END