//
//  UAEC2DescribeDHCPOptionsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeDHCPOptionsResponse.h"
#import "UAEC2DHCPConfiguration.h"
#import "UAEC2Tag.h"
#import "UAEC2DHCPOption.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeDHCPOptionsResponseSpec)

describe(@"UAEC2DescribeDHCPOptionsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeDHCPOptionsResponse *describeDHCPOptionsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeDHCPOptionsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeDHCPOptionsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END