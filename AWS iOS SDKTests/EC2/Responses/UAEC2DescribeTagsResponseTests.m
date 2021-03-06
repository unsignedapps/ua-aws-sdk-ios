//
//  UAEC2DescribeTagsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeTagsResponse.h"
#import "UAEC2TagDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeTagsResponseSpec)

describe(@"UAEC2DescribeTagsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeTagsResponse *describeTagsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeTagsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeTagsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END