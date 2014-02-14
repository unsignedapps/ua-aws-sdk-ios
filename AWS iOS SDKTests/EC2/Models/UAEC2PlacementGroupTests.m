//
//  UAEC2PlacementGroupTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2PlacementGroup.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2PlacementGroupSpec)

describe(@"UAEC2PlacementGroup", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2PlacementGroup *placementGroup = [MTLXMLAdapter modelOfClass:[UAEC2PlacementGroup class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[placementGroup should] beNonNil];

	    // additional verification
	});

});

SPEC_END