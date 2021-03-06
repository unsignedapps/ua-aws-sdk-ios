//
//  UAEC2CreateSecurityGroupResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateSecurityGroupResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateSecurityGroupResponseSpec)

describe(@"UAEC2CreateSecurityGroupResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateSecurityGroupResponse *createSecurityGroupResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateSecurityGroupResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createSecurityGroupResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END