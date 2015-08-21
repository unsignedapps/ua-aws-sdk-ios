//
//  UARDSDBSubnetGroupMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBSubnetGroupMessage.h"
#import "UARDSSubnetAvailabilityZone.h"
#import "UARDSSubnet.h"
#import "UARDSDBSubnetGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBSubnetGroupMessageSpec)

describe(@"UARDSDBSubnetGroupMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBSubnetGroupMessage *dBSubnetGroupMessage = [MTLXMLAdapter modelOfClass:[UARDSDBSubnetGroupMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBSubnetGroupMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END