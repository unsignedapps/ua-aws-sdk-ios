//
//  UAEC2DetachClassicLinkVPCResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DetachClassicLinkVPCResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DetachClassicLinkVPCResponseSpec)

describe(@"UAEC2DetachClassicLinkVPCResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DetachClassicLinkVPCResponse *detachClassicLinkVPCResponse = [MTLXMLAdapter modelOfClass:[UAEC2DetachClassicLinkVPCResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[detachClassicLinkVPCResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END