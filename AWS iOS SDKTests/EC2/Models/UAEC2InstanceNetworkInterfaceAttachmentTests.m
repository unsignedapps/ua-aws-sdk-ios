//
//  UAEC2InstanceNetworkInterfaceAttachmentTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstanceNetworkInterfaceAttachment.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstanceNetworkInterfaceAttachmentSpec)

describe(@"UAEC2InstanceNetworkInterfaceAttachment", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstanceNetworkInterfaceAttachment *instanceNetworkInterfaceAttachment = [MTLXMLAdapter modelOfClass:[UAEC2InstanceNetworkInterfaceAttachment class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instanceNetworkInterfaceAttachment should] beNonNil];

	    // additional verification
	});

});

SPEC_END