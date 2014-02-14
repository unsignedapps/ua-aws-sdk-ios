//
//  UACWDescribeAlarmsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UACWDescribeAlarmsResponse.h"
#import "UACWDimension.h"
#import "UACWMetricAlarm.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UACWDescribeAlarmsResponseSpec)

describe(@"UACWDescribeAlarmsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UACWDescribeAlarmsResponse *describeAlarmsResponse = [MTLXMLAdapter modelOfClass:[UACWDescribeAlarmsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeAlarmsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END