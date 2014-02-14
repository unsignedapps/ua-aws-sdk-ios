//
//  UAEC2DescribeReservedInstancesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeReservedInstancesResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2RecurringCharge.h"
#import "UAEC2ReservedInstance.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeReservedInstancesResponseSpec)

describe(@"UAEC2DescribeReservedInstancesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeReservedInstancesResponse *describeReservedInstancesResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeReservedInstancesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeReservedInstancesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END