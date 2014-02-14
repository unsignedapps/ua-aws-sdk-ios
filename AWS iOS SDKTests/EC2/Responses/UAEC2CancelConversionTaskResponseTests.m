//
//  UAEC2CancelConversionTaskResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CancelConversionTaskResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CancelConversionTaskResponseSpec)

describe(@"UAEC2CancelConversionTaskResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CancelConversionTaskResponse *cancelConversionTaskResponse = [MTLXMLAdapter modelOfClass:[UAEC2CancelConversionTaskResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[cancelConversionTaskResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END