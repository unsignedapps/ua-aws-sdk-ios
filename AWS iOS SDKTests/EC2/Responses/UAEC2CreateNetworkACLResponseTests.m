//
//  UAEC2CreateNetworkACLResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateNetworkACLResponse.h"
#import "UAEC2IcmpTypeCode.h"
#import "UAEC2PortRange.h"
#import "UAEC2Entry.h"
#import "UAEC2NetworkACLAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2NetworkACL.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateNetworkACLResponseSpec)

describe(@"UAEC2CreateNetworkACLResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateNetworkACLResponse *createNetworkACLResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateNetworkACLResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createNetworkACLResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END