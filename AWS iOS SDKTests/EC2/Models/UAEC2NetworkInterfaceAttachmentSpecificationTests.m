//
//  UAEC2NetworkInterfaceAttachmentSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2NetworkInterfaceAttachmentSpecification.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2NetworkInterfaceAttachmentSpecificationSpec)

describe(@"UAEC2NetworkInterfaceAttachmentSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2NetworkInterfaceAttachmentSpecification *networkInterfaceAttachmentSpecification = [MTLXMLAdapter modelOfClass:[UAEC2NetworkInterfaceAttachmentSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[networkInterfaceAttachmentSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END