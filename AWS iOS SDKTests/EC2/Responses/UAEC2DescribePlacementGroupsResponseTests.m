//
//  UAEC2DescribePlacementGroupsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribePlacementGroupsResponse.h"
#import "UAEC2PlacementGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribePlacementGroupsResponseSpec)

describe(@"UAEC2DescribePlacementGroupsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribePlacementGroupsResponse *describePlacementGroupsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribePlacementGroupsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describePlacementGroupsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END