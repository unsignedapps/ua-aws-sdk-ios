//
//  UAASLaunchConfigurationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASLaunchConfiguration.h"
#import "UAASEBSBlockDevice.h"
#import "UAASBlockDeviceMapping.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASLaunchConfigurationSpec)

describe(@"UAASLaunchConfiguration", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASLaunchConfiguration *launchConfiguration = [MTLXMLAdapter modelOfClass:[UAASLaunchConfiguration class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[launchConfiguration should] beNonNil];

	    // additional verification
	});

});

SPEC_END