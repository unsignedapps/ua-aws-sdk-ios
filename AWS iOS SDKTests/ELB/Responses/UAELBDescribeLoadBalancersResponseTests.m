//
//  UAELBDescribeLoadBalancersResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBDescribeLoadBalancersResponse.h"
#import "UAELBListener.h"
#import "UAELBListenerDescription.h"
#import "UAELBAppCookieStickinessPolicy.h"
#import "UAELBLBCookieStickinessPolicy.h"
#import "UAELBPolicies.h"
#import "UAELBBackendServerDescription.h"
#import "UAELBInstance.h"
#import "UAELBHealthCheck.h"
#import "UAELBSourceSecurityGroup.h"
#import "UAELBLoadBalancerDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBDescribeLoadBalancersResponseSpec)

describe(@"UAELBDescribeLoadBalancersResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBDescribeLoadBalancersResponse *describeLoadBalancersResponse = [MTLXMLAdapter modelOfClass:[UAELBDescribeLoadBalancersResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeLoadBalancersResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END