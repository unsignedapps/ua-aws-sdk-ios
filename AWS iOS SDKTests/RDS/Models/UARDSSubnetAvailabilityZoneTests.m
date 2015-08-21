//
//  UARDSSubnetAvailabilityZoneTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSSubnetAvailabilityZone.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSSubnetAvailabilityZoneSpec)

describe(@"UARDSSubnetAvailabilityZone", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSSubnetAvailabilityZone *subnetAvailabilityZone = [MTLXMLAdapter modelOfClass:[UARDSSubnetAvailabilityZone class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[subnetAvailabilityZone should] beNonNil];

	    // additional verification
	});

});

SPEC_END