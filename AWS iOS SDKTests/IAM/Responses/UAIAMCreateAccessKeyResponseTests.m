//
//  UAIAMCreateAccessKeyResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMCreateAccessKeyResponse.h"
#import "UAIAMAccessKey.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMCreateAccessKeyResponseSpec)

describe(@"UAIAMCreateAccessKeyResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMCreateAccessKeyResponse *createAccessKeyResponse = [MTLXMLAdapter modelOfClass:[UAIAMCreateAccessKeyResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createAccessKeyResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END