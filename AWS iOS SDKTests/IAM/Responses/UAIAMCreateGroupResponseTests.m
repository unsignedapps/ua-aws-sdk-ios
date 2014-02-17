//
//  UAIAMCreateGroupResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMCreateGroupResponse.h"
#import "UAIAMGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMCreateGroupResponseSpec)

describe(@"UAIAMCreateGroupResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMCreateGroupResponse *createGroupResponse = [MTLXMLAdapter modelOfClass:[UAIAMCreateGroupResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createGroupResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END