//
//  UAIAMGetInstanceProfileResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMGetInstanceProfileResponse.h"
#import "UAIAMRole.h"
#import "UAIAMInstanceProfile.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMGetInstanceProfileResponseSpec)

describe(@"UAIAMGetInstanceProfileResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMGetInstanceProfileResponse *getInstanceProfileResponse = [MTLXMLAdapter modelOfClass:[UAIAMGetInstanceProfileResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[getInstanceProfileResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END