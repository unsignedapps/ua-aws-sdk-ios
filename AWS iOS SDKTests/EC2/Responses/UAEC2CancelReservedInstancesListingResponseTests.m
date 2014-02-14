//
//  UAEC2CancelReservedInstancesListingResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CancelReservedInstancesListingResponse.h"
#import "UAEC2InstanceCount.h"
#import "UAEC2PriceSchedule.h"
#import "UAEC2Tag.h"
#import "UAEC2ReservedInstancesListing.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CancelReservedInstancesListingResponseSpec)

describe(@"UAEC2CancelReservedInstancesListingResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CancelReservedInstancesListingResponse *cancelReservedInstancesListingResponse = [MTLXMLAdapter modelOfClass:[UAEC2CancelReservedInstancesListingResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[cancelReservedInstancesListingResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END