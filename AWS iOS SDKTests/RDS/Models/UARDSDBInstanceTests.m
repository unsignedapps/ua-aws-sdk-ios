//
//  UARDSDBInstanceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBInstance.h"
#import "UARDSEndpoint.h"
#import "UARDSDBInstanceSecurityGroup.h"
#import "UARDSVPCSecurityGroup.h"
#import "UARDSDBInstanceParameterGroup.h"
#import "UARDSSubnetAvailabilityZone.h"
#import "UARDSSubnet.h"
#import "UARDSDBInstanceSubnetGroup.h"
#import "UARDSPendingModifiedValues.h"
#import "UARDSOptionGroupMembership.h"
#import "UARDSStatusInfo.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBInstanceSpec)

describe(@"UARDSDBInstance", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBInstance *dBInstance = [MTLXMLAdapter modelOfClass:[UARDSDBInstance class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBInstance should] beNonNil];

	    // additional verification
	});

});

SPEC_END