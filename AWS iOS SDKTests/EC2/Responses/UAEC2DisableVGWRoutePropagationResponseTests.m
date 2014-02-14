//
//  UAEC2DisableVGWRoutePropagationResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DisableVGWRoutePropagationResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DisableVGWRoutePropagationResponseSpec)

describe(@"UAEC2DisableVGWRoutePropagationResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DisableVGWRoutePropagationResponse *disableVGWRoutePropagationResponse = [MTLXMLAdapter modelOfClass:[UAEC2DisableVGWRoutePropagationResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[disableVGWRoutePropagationResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END