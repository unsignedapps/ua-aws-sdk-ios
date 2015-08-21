//
//  UARDSReservedDBInstancesOfferingMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSReservedDBInstancesOfferingMessage.h"
#import "UARDSRecurringCharge.h"
#import "UARDSReservedDBInstancesOffering.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSReservedDBInstancesOfferingMessageSpec)

describe(@"UARDSReservedDBInstancesOfferingMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSReservedDBInstancesOfferingMessage *reservedDBInstancesOfferingMessage = [MTLXMLAdapter modelOfClass:[UARDSReservedDBInstancesOfferingMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedDBInstancesOfferingMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END