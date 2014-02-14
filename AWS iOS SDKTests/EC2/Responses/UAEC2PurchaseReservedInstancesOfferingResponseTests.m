//
//  UAEC2PurchaseReservedInstancesOfferingResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2PurchaseReservedInstancesOfferingResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2PurchaseReservedInstancesOfferingResponseSpec)

describe(@"UAEC2PurchaseReservedInstancesOfferingResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2PurchaseReservedInstancesOfferingResponse *purchaseReservedInstancesOfferingResponse = [MTLXMLAdapter modelOfClass:[UAEC2PurchaseReservedInstancesOfferingResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[purchaseReservedInstancesOfferingResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END