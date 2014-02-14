//
//  UAEC2DeleteDHCPOptionsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteDHCPOptionsResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteDHCPOptionsResponseSpec)

describe(@"UAEC2DeleteDHCPOptionsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteDHCPOptionsResponse *deleteDHCPOptionsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteDHCPOptionsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteDHCPOptionsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END