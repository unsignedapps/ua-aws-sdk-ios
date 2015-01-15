//
//  UAEC2EnableVPCClassicLinkResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2EnableVPCClassicLinkResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2EnableVPCClassicLinkResponseSpec)

describe(@"UAEC2EnableVPCClassicLinkResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2EnableVPCClassicLinkResponse *enableVPCClassicLinkResponse = [MTLXMLAdapter modelOfClass:[UAEC2EnableVPCClassicLinkResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[enableVPCClassicLinkResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END