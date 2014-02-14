//
//  UAASDescribeMetricCollectionTypesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribeMetricCollectionTypesResponse.h"
#import "UAASMetricCollectionType.h"
#import "UAASMetricGranularityType.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASDescribeMetricCollectionTypesResponseSpec)

describe(@"UAASDescribeMetricCollectionTypesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASDescribeMetricCollectionTypesResponse *describeMetricCollectionTypesResponse = [MTLXMLAdapter modelOfClass:[UAASDescribeMetricCollectionTypesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeMetricCollectionTypesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END