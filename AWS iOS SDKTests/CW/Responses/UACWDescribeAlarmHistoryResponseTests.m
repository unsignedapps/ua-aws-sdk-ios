//
//  UACWDescribeAlarmHistoryResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UACWDescribeAlarmHistoryResponse.h"
#import "UACWAlarmHistoryItem.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UACWDescribeAlarmHistoryResponseSpec)

describe(@"UACWDescribeAlarmHistoryResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UACWDescribeAlarmHistoryResponse *describeAlarmHistoryResponse = [MTLXMLAdapter modelOfClass:[UACWDescribeAlarmHistoryResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeAlarmHistoryResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END