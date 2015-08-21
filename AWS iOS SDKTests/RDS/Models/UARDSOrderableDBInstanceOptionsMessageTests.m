//
//  UARDSOrderableDBInstanceOptionsMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSOrderableDBInstanceOptionsMessage.h"
#import "UARDSAvailabilityZone.h"
#import "UARDSOrderableDBInstanceOption.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSOrderableDBInstanceOptionsMessageSpec)

describe(@"UARDSOrderableDBInstanceOptionsMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSOrderableDBInstanceOptionsMessage *orderableDBInstanceOptionsMessage = [MTLXMLAdapter modelOfClass:[UARDSOrderableDBInstanceOptionsMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[orderableDBInstanceOptionsMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END