//
//  UAEC2DescribeReservedInstancesOfferingsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeReservedInstancesOfferingsResponse.h"
#import "UAEC2RecurringCharge.h"
#import "UAEC2PricingDetail.h"
#import "UAEC2ReservedInstancesOffering.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeReservedInstancesOfferingsResponseSpec)

describe(@"UAEC2DescribeReservedInstancesOfferingsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeReservedInstancesOfferingsResponse *describeReservedInstancesOfferingsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeReservedInstancesOfferingsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeReservedInstancesOfferingsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END