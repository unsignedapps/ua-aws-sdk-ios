//
//  UAEC2InstanceNetworkInterfaceSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2PrivateIPAddressSpecifiction.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstanceNetworkInterfaceSpecificationSpec)

describe(@"UAEC2InstanceNetworkInterfaceSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstanceNetworkInterfaceSpecification *instanceNetworkInterfaceSpecification = [MTLXMLAdapter modelOfClass:[UAEC2InstanceNetworkInterfaceSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instanceNetworkInterfaceSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END