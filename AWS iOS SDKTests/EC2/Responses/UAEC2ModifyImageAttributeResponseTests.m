//
//  UAEC2ModifyImageAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ModifyImageAttributeResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ModifyImageAttributeResponseSpec)

describe(@"UAEC2ModifyImageAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ModifyImageAttributeResponse *modifyImageAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ModifyImageAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[modifyImageAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END