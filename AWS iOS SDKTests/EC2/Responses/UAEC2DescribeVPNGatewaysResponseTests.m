//
//  UAEC2DescribeVPNGatewaysResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeVPNGatewaysResponse.h"
#import "UAEC2VPCAttachment.h"
#import "UAEC2Tag.h"
#import "UAEC2VPNGateway.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeVPNGatewaysResponseSpec)

describe(@"UAEC2DescribeVPNGatewaysResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeVPNGatewaysResponse *describeVPNGatewaysResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeVPNGatewaysResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeVPNGatewaysResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END