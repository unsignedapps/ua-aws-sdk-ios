//
//  UAEC2DescribeLicensesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeLicensesResponse.h"
#import "UAEC2LicenseCapacity.h"
#import "UAEC2Tag.h"
#import "UAEC2License.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeLicensesResponseSpec)

describe(@"UAEC2DescribeLicensesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeLicensesResponse *describeLicensesResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeLicensesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeLicensesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END