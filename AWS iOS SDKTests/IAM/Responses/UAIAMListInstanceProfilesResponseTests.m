//
//  UAIAMListInstanceProfilesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMListInstanceProfilesResponse.h"
#import "UAIAMRole.h"
#import "UAIAMInstanceProfile.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMListInstanceProfilesResponseSpec)

describe(@"UAIAMListInstanceProfilesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMListInstanceProfilesResponse *listInstanceProfilesResponse = [MTLXMLAdapter modelOfClass:[UAIAMListInstanceProfilesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listInstanceProfilesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END