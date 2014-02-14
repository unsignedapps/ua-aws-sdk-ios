//
//  UAEC2ConfirmProductInstanceResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ConfirmProductInstanceResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ConfirmProductInstanceResponseSpec)

describe(@"UAEC2ConfirmProductInstanceResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ConfirmProductInstanceResponse *confirmProductInstanceResponse = [MTLXMLAdapter modelOfClass:[UAEC2ConfirmProductInstanceResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[confirmProductInstanceResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END