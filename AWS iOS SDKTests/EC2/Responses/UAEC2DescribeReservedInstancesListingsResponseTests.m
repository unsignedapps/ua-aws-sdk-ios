//
//  UAEC2DescribeReservedInstancesListingsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeReservedInstancesListingsResponse.h"
#import "UAEC2InstanceCount.h"
#import "UAEC2PriceSchedule.h"
#import "UAEC2Tag.h"
#import "UAEC2ReservedInstancesListing.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeReservedInstancesListingsResponseSpec)

describe(@"UAEC2DescribeReservedInstancesListingsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeReservedInstancesListingsResponse *describeReservedInstancesListingsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeReservedInstancesListingsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeReservedInstancesListingsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END