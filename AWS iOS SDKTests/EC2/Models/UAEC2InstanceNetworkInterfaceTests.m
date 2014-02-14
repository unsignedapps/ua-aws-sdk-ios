//
//  UAEC2InstanceNetworkInterfaceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstanceNetworkInterface.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2InstanceNetworkInterfaceAttachment.h"
#import "UAEC2InstanceNetworkInterfaceAssociation.h"
#import "UAEC2InstancePrivateIPAddress.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstanceNetworkInterfaceSpec)

describe(@"UAEC2InstanceNetworkInterface", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstanceNetworkInterface *instanceNetworkInterface = [MTLXMLAdapter modelOfClass:[UAEC2InstanceNetworkInterface class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instanceNetworkInterface should] beNonNil];

	    // additional verification
	});

});

SPEC_END