//
//  UAEC2CreateSubnetResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateSubnetResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2Subnet.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateSubnetResponseSpec)

describe(@"UAEC2CreateSubnetResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateSubnetResponse *createSubnetResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateSubnetResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createSubnetResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END