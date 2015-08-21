//
//  UAEC2VPCClassicLinkTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VPCClassicLink.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VPCClassicLinkSpec)

describe(@"UAEC2VPCClassicLink", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VPCClassicLink *vPCClassicLink = [MTLXMLAdapter modelOfClass:[UAEC2VPCClassicLink class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[vPCClassicLink should] beNonNil];

	    // additional verification
	});

});

SPEC_END