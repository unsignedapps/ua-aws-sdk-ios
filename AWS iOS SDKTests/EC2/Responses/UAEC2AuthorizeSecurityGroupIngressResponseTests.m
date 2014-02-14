//
//  UAEC2AuthorizeSecurityGroupIngressResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AuthorizeSecurityGroupIngressResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AuthorizeSecurityGroupIngressResponseSpec)

describe(@"UAEC2AuthorizeSecurityGroupIngressResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AuthorizeSecurityGroupIngressResponse *authorizeSecurityGroupIngressResponse = [MTLXMLAdapter modelOfClass:[UAEC2AuthorizeSecurityGroupIngressResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[authorizeSecurityGroupIngressResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END