//
//  UAIAMListInstanceProfilesForRoleResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMListInstanceProfilesForRoleResponse.h"
#import "UAIAMRole.h"
#import "UAIAMInstanceProfile.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMListInstanceProfilesForRoleResponseSpec)

describe(@"UAIAMListInstanceProfilesForRoleResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMListInstanceProfilesForRoleResponse *listInstanceProfilesForRoleResponse = [MTLXMLAdapter modelOfClass:[UAIAMListInstanceProfilesForRoleResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listInstanceProfilesForRoleResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END