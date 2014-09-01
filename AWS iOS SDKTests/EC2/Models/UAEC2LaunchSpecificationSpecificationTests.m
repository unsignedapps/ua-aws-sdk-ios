//
//  UAEC2LaunchSpecificationSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2LaunchSpecificationSpecification.h"
#import "UAEC2SpotPlacement.h"
#import "UAEC2EBSBlockDevice.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2PrivateIPAddressSpecification.h"
#import "UAEC2NetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2LaunchSpecificationSpecificationSpec)

describe(@"UAEC2LaunchSpecificationSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2LaunchSpecificationSpecification *launchSpecificationSpecification = [MTLXMLAdapter modelOfClass:[UAEC2LaunchSpecificationSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[launchSpecificationSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END