//
//  UAIAMListMFADevicesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMListMFADevicesResponse.h"
#import "UAIAMMFADevice.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMListMFADevicesResponseSpec)

describe(@"UAIAMListMFADevicesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMListMFADevicesResponse *listMFADevicesResponse = [MTLXMLAdapter modelOfClass:[UAIAMListMFADevicesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listMFADevicesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END