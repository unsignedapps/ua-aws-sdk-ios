//
//  UACWMetricDatumTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UACWMetricDatum.h"
#import "UACWDimension.h"
#import "UACWStatisticSet.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UACWMetricDatumSpec)

describe(@"UACWMetricDatum", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UACWMetricDatum *metricDatum = [MTLXMLAdapter modelOfClass:[UACWMetricDatum class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[metricDatum should] beNonNil];

	    // additional verification
	});

});

SPEC_END