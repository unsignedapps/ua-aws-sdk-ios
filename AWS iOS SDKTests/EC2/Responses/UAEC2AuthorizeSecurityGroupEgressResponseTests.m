//
//  UAEC2AuthorizeSecurityGroupEgressResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AuthorizeSecurityGroupEgressResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AuthorizeSecurityGroupEgressResponseSpec)

describe(@"UAEC2AuthorizeSecurityGroupEgressResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AuthorizeSecurityGroupEgressResponse *authorizeSecurityGroupEgressResponse = [MTLXMLAdapter modelOfClass:[UAEC2AuthorizeSecurityGroupEgressResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[authorizeSecurityGroupEgressResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END