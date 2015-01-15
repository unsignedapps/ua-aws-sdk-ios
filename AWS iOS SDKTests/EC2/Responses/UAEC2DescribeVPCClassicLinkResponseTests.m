//
//  UAEC2DescribeVPCClassicLinkResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeVPCClassicLinkResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2VPC.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeVPCClassicLinkResponseSpec)

describe(@"UAEC2DescribeVPCClassicLinkResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeVPCClassicLinkResponse *describeVPCClassicLinkResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeVPCClassicLinkResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeVPCClassicLinkResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END