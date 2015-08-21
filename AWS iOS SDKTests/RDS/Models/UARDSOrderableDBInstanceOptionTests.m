//
//  UARDSOrderableDBInstanceOptionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSOrderableDBInstanceOption.h"
#import "UARDSAvailabilityZone.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSOrderableDBInstanceOptionSpec)

describe(@"UARDSOrderableDBInstanceOption", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSOrderableDBInstanceOption *orderableDBInstanceOption = [MTLXMLAdapter modelOfClass:[UARDSOrderableDBInstanceOption class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[orderableDBInstanceOption should] beNonNil];

	    // additional verification
	});

});

SPEC_END