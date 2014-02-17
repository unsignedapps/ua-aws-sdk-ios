//
//  UAIAMListVirtualMFADevicesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMListVirtualMFADevicesResponse.h"
#import "UAIAMUser.h"
#import "UAIAMVirtualMFADevice.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMListVirtualMFADevicesResponseSpec)

describe(@"UAIAMListVirtualMFADevicesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMListVirtualMFADevicesResponse *listVirtualMFADevicesResponse = [MTLXMLAdapter modelOfClass:[UAIAMListVirtualMFADevicesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listVirtualMFADevicesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END