//
//  UAIAMAddRoleToInstanceProfileResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMAddRoleToInstanceProfileResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMAddRoleToInstanceProfileResponseSpec)

describe(@"UAIAMAddRoleToInstanceProfileResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMAddRoleToInstanceProfileResponse *addRoleToInstanceProfileResponse = [MTLXMLAdapter modelOfClass:[UAIAMAddRoleToInstanceProfileResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[addRoleToInstanceProfileResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END