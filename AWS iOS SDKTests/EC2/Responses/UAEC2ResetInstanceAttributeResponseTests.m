//
//  UAEC2ResetInstanceAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ResetInstanceAttributeResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ResetInstanceAttributeResponseSpec)

describe(@"UAEC2ResetInstanceAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ResetInstanceAttributeResponse *resetInstanceAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ResetInstanceAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[resetInstanceAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END