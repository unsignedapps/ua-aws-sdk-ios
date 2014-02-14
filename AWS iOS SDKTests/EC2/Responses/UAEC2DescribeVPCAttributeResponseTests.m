//
//  UAEC2DescribeVPCAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeVPCAttributeResponse.h"
#import "UAEC2EnableDNSSupport.h"
#import "UAEC2EnableDNSHostnames.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeVPCAttributeResponseSpec)

describe(@"UAEC2DescribeVPCAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeVPCAttributeResponse *describeVPCAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeVPCAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeVPCAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END