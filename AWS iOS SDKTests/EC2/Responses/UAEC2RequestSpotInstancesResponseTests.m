//
//  UAEC2RequestSpotInstancesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2RequestSpotInstancesResponse.h"
#import "UAEC2Fault.h"
#import "UAEC2Status.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2SpotPlacement.h"
#import "UAEC2EBSBlockDevice.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2PrivateIPAddressSpecification.h"
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"
#import "UAEC2LaunchSpecification.h"
#import "UAEC2Tag.h"
#import "UAEC2SpotInstanceRequest.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2RequestSpotInstancesResponseSpec)

describe(@"UAEC2RequestSpotInstancesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2RequestSpotInstancesResponse *requestSpotInstancesResponse = [MTLXMLAdapter modelOfClass:[UAEC2RequestSpotInstancesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[requestSpotInstancesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END