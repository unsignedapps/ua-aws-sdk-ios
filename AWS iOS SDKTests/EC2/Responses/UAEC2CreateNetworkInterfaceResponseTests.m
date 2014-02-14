//
//  UAEC2CreateNetworkInterfaceResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateNetworkInterfaceResponse.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2NetworkInterfaceAttachment.h"
#import "UAEC2NetworkInterfaceAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PrivateIPAddress.h"
#import "UAEC2NetworkInterface.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateNetworkInterfaceResponseSpec)

describe(@"UAEC2CreateNetworkInterfaceResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateNetworkInterfaceResponse *createNetworkInterfaceResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateNetworkInterfaceResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createNetworkInterfaceResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END