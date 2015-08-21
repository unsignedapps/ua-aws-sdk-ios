//
//  UARDSDBInstanceSubnetGroupTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBInstanceSubnetGroup.h"
#import "UARDSSubnetAvailabilityZone.h"
#import "UARDSSubnet.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBInstanceSubnetGroupSpec)

describe(@"UARDSDBInstanceSubnetGroup", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBInstanceSubnetGroup *dBInstanceSubnetGroup = [MTLXMLAdapter modelOfClass:[UARDSDBInstanceSubnetGroup class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBInstanceSubnetGroup should] beNonNil];

	    // additional verification
	});

});

SPEC_END