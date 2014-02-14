//
//  UAEC2DescribeAccountAttributesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeAccountAttributesResponse.h"
#import "UAEC2AccountAttribute.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeAccountAttributesResponseSpec)

describe(@"UAEC2DescribeAccountAttributesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeAccountAttributesResponse *describeAccountAttributesResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeAccountAttributesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeAccountAttributesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END