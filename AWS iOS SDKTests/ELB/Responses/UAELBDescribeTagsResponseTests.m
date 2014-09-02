//
//  UAELBDescribeTagsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBDescribeTagsResponse.h"
#import "UAELBTag.h"
#import "UAELBTagDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBDescribeTagsResponseSpec)

describe(@"UAELBDescribeTagsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBDescribeTagsResponse *describeTagsResponse = [MTLXMLAdapter modelOfClass:[UAELBDescribeTagsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeTagsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END