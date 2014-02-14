//
//  UAEC2NetworkInterfaceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2NetworkInterface.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2NetworkInterfaceAttachment.h"
#import "UAEC2NetworkInterfaceAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PrivateIPAddress.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2NetworkInterfaceSpec)

describe(@"UAEC2NetworkInterface", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2NetworkInterface *networkInterface = [MTLXMLAdapter modelOfClass:[UAEC2NetworkInterface class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[networkInterface should] beNonNil];

	    // additional verification
	});

});

SPEC_END