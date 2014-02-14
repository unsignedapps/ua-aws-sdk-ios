//
//  UAEC2NetworkACLTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2NetworkACL.h"
#import "UAEC2IcmpTypeCode.h"
#import "UAEC2PortRange.h"
#import "UAEC2Entry.h"
#import "UAEC2NetworkACLAssociation.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2NetworkACLSpec)

describe(@"UAEC2NetworkACL", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2NetworkACL *networkACL = [MTLXMLAdapter modelOfClass:[UAEC2NetworkACL class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[networkACL should] beNonNil];

	    // additional verification
	});

});

SPEC_END