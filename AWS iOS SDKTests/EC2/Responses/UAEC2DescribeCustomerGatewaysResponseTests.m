//
//  UAEC2DescribeCustomerGatewaysResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeCustomerGatewaysResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2CustomerGatewayy.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeCustomerGatewaysResponseSpec)

describe(@"UAEC2DescribeCustomerGatewaysResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeCustomerGatewaysResponse *describeCustomerGatewaysResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeCustomerGatewaysResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeCustomerGatewaysResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END