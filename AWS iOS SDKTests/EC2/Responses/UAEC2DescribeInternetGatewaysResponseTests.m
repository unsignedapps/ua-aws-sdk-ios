//
//  UAEC2DescribeInternetGatewaysResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeInternetGatewaysResponse.h"
#import "UAEC2Attachment.h"
#import "UAEC2Tag.h"
#import "UAEC2InternetGateway.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeInternetGatewaysResponseSpec)

describe(@"UAEC2DescribeInternetGatewaysResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeInternetGatewaysResponse *describeInternetGatewaysResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeInternetGatewaysResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeInternetGatewaysResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END