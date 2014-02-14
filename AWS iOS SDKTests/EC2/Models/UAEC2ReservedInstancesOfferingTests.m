//
//  UAEC2ReservedInstancesOfferingTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReservedInstancesOffering.h"
#import "UAEC2RecurringCharge.h"
#import "UAEC2PricingDetail.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReservedInstancesOfferingSpec)

describe(@"UAEC2ReservedInstancesOffering", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReservedInstancesOffering *reservedInstancesOffering = [MTLXMLAdapter modelOfClass:[UAEC2ReservedInstancesOffering class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedInstancesOffering should] beNonNil];

	    // additional verification
	});

});

SPEC_END