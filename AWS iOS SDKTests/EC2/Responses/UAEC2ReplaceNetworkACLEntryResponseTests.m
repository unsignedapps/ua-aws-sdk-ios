//
//  UAEC2ReplaceNetworkACLEntryResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReplaceNetworkACLEntryResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReplaceNetworkACLEntryResponseSpec)

describe(@"UAEC2ReplaceNetworkACLEntryResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReplaceNetworkACLEntryResponse *replaceNetworkACLEntryResponse = [MTLXMLAdapter modelOfClass:[UAEC2ReplaceNetworkACLEntryResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[replaceNetworkACLEntryResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END