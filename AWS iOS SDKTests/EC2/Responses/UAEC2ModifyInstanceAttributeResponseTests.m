//
//  UAEC2ModifyInstanceAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ModifyInstanceAttributeResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ModifyInstanceAttributeResponseSpec)

describe(@"UAEC2ModifyInstanceAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ModifyInstanceAttributeResponse *modifyInstanceAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ModifyInstanceAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[modifyInstanceAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END