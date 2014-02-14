//
//  UAEC2CreateNetworkACLEntryResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateNetworkACLEntryResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateNetworkACLEntryResponseSpec)

describe(@"UAEC2CreateNetworkACLEntryResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateNetworkACLEntryResponse *createNetworkACLEntryResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateNetworkACLEntryResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createNetworkACLEntryResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END