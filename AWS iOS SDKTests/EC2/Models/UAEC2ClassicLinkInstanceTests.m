//
//  UAEC2ClassicLinkInstanceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ClassicLinkInstance.h"
#import "UAEC2Group.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ClassicLinkInstanceSpec)

describe(@"UAEC2ClassicLinkInstance", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ClassicLinkInstance *classicLinkInstance = [MTLXMLAdapter modelOfClass:[UAEC2ClassicLinkInstance class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[classicLinkInstance should] beNonNil];

	    // additional verification
	});

});

SPEC_END