//
//  UAEC2GetConsoleOutputResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2GetConsoleOutputResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2GetConsoleOutputResponseSpec)

describe(@"UAEC2GetConsoleOutputResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2GetConsoleOutputResponse *getConsoleOutputResponse = [MTLXMLAdapter modelOfClass:[UAEC2GetConsoleOutputResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[getConsoleOutputResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END