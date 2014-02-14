//
//  UAEC2NetworkInterfaceAttachmentTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2NetworkInterfaceAttachment.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2NetworkInterfaceAttachmentSpec)

describe(@"UAEC2NetworkInterfaceAttachment", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2NetworkInterfaceAttachment *networkInterfaceAttachment = [MTLXMLAdapter modelOfClass:[UAEC2NetworkInterfaceAttachment class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[networkInterfaceAttachment should] beNonNil];

	    // additional verification
	});

});

SPEC_END