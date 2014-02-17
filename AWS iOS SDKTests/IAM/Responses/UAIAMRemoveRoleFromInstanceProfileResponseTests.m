//
//  UAIAMRemoveRoleFromInstanceProfileResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMRemoveRoleFromInstanceProfileResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMRemoveRoleFromInstanceProfileResponseSpec)

describe(@"UAIAMRemoveRoleFromInstanceProfileResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMRemoveRoleFromInstanceProfileResponse *removeRoleFromInstanceProfileResponse = [MTLXMLAdapter modelOfClass:[UAIAMRemoveRoleFromInstanceProfileResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[removeRoleFromInstanceProfileResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END