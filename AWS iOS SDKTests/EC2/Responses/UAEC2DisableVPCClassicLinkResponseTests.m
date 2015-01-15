//
//  UAEC2DisableVPCClassicLinkResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DisableVPCClassicLinkResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DisableVPCClassicLinkResponseSpec)

describe(@"UAEC2DisableVPCClassicLinkResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DisableVPCClassicLinkResponse *disableVPCClassicLinkResponse = [MTLXMLAdapter modelOfClass:[UAEC2DisableVPCClassicLinkResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[disableVPCClassicLinkResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END