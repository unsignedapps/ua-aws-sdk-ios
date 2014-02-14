//
//  UACWDescribeAlarmsForMetricResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UACWDescribeAlarmsForMetricResponse.h"
#import "UACWDimension.h"
#import "UACWMetricAlarm.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UACWDescribeAlarmsForMetricResponseSpec)

describe(@"UACWDescribeAlarmsForMetricResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UACWDescribeAlarmsForMetricResponse *describeAlarmsForMetricResponse = [MTLXMLAdapter modelOfClass:[UACWDescribeAlarmsForMetricResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeAlarmsForMetricResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END