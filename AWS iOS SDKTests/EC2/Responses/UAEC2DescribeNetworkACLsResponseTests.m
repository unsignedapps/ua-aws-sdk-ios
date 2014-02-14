//
//  UAEC2DescribeNetworkACLsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeNetworkACLsResponse.h"
#import "UAEC2IcmpTypeCode.h"
#import "UAEC2PortRange.h"
#import "UAEC2Entry.h"
#import "UAEC2NetworkACLAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2NetworkACL.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeNetworkACLsResponseSpec)

describe(@"UAEC2DescribeNetworkACLsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeNetworkACLsResponse *describeNetworkACLsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeNetworkACLsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeNetworkACLsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END