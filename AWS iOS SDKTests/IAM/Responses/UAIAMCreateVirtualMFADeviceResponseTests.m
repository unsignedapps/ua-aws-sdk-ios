//
//  UAIAMCreateVirtualMFADeviceResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMCreateVirtualMFADeviceResponse.h"
#import "UAIAMUser.h"
#import "UAIAMVirtualMFADevice.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMCreateVirtualMFADeviceResponseSpec)

describe(@"UAIAMCreateVirtualMFADeviceResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMCreateVirtualMFADeviceResponse *createVirtualMFADeviceResponse = [MTLXMLAdapter modelOfClass:[UAIAMCreateVirtualMFADeviceResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createVirtualMFADeviceResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END