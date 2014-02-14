//
//  UAEC2CreateDHCPOptionsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateDHCPOptionsResponse.h"
#import "UAEC2DHCPConfiguration.h"
#import "UAEC2Tag.h"
#import "UAEC2DHCPOptions.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateDHCPOptionsResponseSpec)

describe(@"UAEC2CreateDHCPOptionsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateDHCPOptionsResponse *createDHCPOptionsResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateDHCPOptionsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createDHCPOptionsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END