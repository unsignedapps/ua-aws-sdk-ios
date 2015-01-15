//
//  UAEC2DescribeClassicLinkInstancesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeClassicLinkInstancesResponse.h"
#import "UAEC2Group.h"
#import "UAEC2Tag.h"
#import "UAEC2Instance.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeClassicLinkInstancesResponseSpec)

describe(@"UAEC2DescribeClassicLinkInstancesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeClassicLinkInstancesResponse *describeClassicLinkInstancesResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeClassicLinkInstancesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeClassicLinkInstancesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END