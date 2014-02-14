//
//  UAEC2LaunchSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2LaunchSpecification.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2SpotPlacement.h"
#import "UAEC2EBSBlockDevice.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2PrivateIPAddressSpecifiction.h"
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2LaunchSpecificationSpec)

describe(@"UAEC2LaunchSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2LaunchSpecification *launchSpecification = [MTLXMLAdapter modelOfClass:[UAEC2LaunchSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[launchSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END