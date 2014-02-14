//
//  UAEC2DescribeSubnetsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeSubnetsResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2Subnet.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeSubnetsResponseSpec)

describe(@"UAEC2DescribeSubnetsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeSubnetsResponse *describeSubnetsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeSubnetsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeSubnetsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END