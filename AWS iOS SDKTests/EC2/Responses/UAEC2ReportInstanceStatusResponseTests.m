//
//  UAEC2ReportInstanceStatusResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReportInstanceStatusResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReportInstanceStatusResponseSpec)

describe(@"UAEC2ReportInstanceStatusResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReportInstanceStatusResponse *reportInstanceStatusResponse = [MTLXMLAdapter modelOfClass:[UAEC2ReportInstanceStatusResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reportInstanceStatusResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END