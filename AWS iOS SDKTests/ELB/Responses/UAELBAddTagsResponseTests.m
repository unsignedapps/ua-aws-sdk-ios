//
//  UAELBAddTagsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBAddTagsResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBAddTagsResponseSpec)

describe(@"UAELBAddTagsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBAddTagsResponse *addTagsResponse = [MTLXMLAdapter modelOfClass:[UAELBAddTagsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[addTagsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END