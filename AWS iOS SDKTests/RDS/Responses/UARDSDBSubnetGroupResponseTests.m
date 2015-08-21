//
//  UARDSDBSubnetGroupResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBSubnetGroupResponse.h"
#import "UARDSSubnetAvailabilityZone.h"
#import "UARDSSubnet.h"
#import "UARDSDBSubnetGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBSubnetGroupResponseSpec)

describe(@"UARDSDBSubnetGroupResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBSubnetGroupResponse *dBSubnetGroupResponse = [MTLXMLAdapter modelOfClass:[UARDSDBSubnetGroupResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBSubnetGroupResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END