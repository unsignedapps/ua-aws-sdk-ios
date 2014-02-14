//
//  UAASCreateOrUpdateTagsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASCreateOrUpdateTagsResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASCreateOrUpdateTagsResponseSpec)

describe(@"UAASCreateOrUpdateTagsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASCreateOrUpdateTagsResponse *createOrUpdateTagsResponse = [MTLXMLAdapter modelOfClass:[UAASCreateOrUpdateTagsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createOrUpdateTagsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END