//
//  UAEC2DescribeSpotInstanceRequestsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeSpotInstanceRequestsResponse.h"
#import "UAEC2SpotInstanceStateFault.h"
#import "UAEC2SpotInstanceStatus.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2SpotPlacement.h"
#import "UAEC2EBSBlockDevice.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2PrivateIPAddressSpecifiction.h"
#import "UAEC2InstanceNetworkInterfaceSpecification.h"
#import "UAEC2IAMInstanceProfileSpecification.h"
#import "UAEC2LaunchSpecification.h"
#import "UAEC2Tag.h"
#import "UAEC2SpotInstanceRequest.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeSpotInstanceRequestsResponseSpec)

describe(@"UAEC2DescribeSpotInstanceRequestsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeSpotInstanceRequestsResponse *describeSpotInstanceRequestsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeSpotInstanceRequestsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeSpotInstanceRequestsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END