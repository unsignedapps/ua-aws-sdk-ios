//
//  UAEC2DescribeSpotPriceHistoryResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeSpotPriceHistoryResponse.h"
#import "UAEC2SpotPriceHistory.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeSpotPriceHistoryResponseSpec)

describe(@"UAEC2DescribeSpotPriceHistoryResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeSpotPriceHistoryResponse *describeSpotPriceHistoryResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeSpotPriceHistoryResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeSpotPriceHistoryResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END