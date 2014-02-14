//
//  UAEC2EnableVGWRoutePropagationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2EnableVGWRoutePropagation.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2EnableVGWRoutePropagationSpec)

describe(@"UAEC2EnableVGWRoutePropagation", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2EnableVGWRoutePropagation *enableVGWRoutePropagation = [MTLXMLAdapter modelOfClass:[UAEC2EnableVGWRoutePropagation class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[enableVGWRoutePropagation should] beNonNil];

	    // additional verification
	});

});

SPEC_END