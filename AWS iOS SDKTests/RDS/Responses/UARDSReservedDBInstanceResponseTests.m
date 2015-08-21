//
//  UARDSReservedDBInstanceResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSReservedDBInstanceResponse.h"
#import "UARDSRecurringCharge.h"
#import "UARDSReservedDBInstance.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSReservedDBInstanceResponseSpec)

describe(@"UARDSReservedDBInstanceResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSReservedDBInstanceResponse *reservedDBInstanceResponse = [MTLXMLAdapter modelOfClass:[UARDSReservedDBInstanceResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedDBInstanceResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END