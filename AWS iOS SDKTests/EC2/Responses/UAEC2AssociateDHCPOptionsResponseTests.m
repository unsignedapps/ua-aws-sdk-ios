//
//  UAEC2AssociateDHCPOptionsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AssociateDHCPOptionsResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AssociateDHCPOptionsResponseSpec)

describe(@"UAEC2AssociateDHCPOptionsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AssociateDHCPOptionsResponse *associateDHCPOptionsResponse = [MTLXMLAdapter modelOfClass:[UAEC2AssociateDHCPOptionsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[associateDHCPOptionsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END