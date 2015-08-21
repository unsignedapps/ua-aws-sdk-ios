//
//  UARDSReservedDBInstanceMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSReservedDBInstanceMessage.h"
#import "UARDSRecurringCharge.h"
#import "UARDSReservedDBInstance.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSReservedDBInstanceMessageSpec)

describe(@"UARDSReservedDBInstanceMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSReservedDBInstanceMessage *reservedDBInstanceMessage = [MTLXMLAdapter modelOfClass:[UARDSReservedDBInstanceMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedDBInstanceMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END