//
//  UAELBLoadBalancerDescriptionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBLoadBalancerDescription.h"
#import "UAELBListener.h"
#import "UAELBListenerDescription.h"
#import "UAELBAppCookieStickinessPolicy.h"
#import "UAELBLBCookieStickinessPolicy.h"
#import "UAELBPolicies.h"
#import "UAELBBackendServerDescription.h"
#import "UAELBInstance.h"
#import "UAELBHealthCheck.h"
#import "UAELBSourceSecurityGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBLoadBalancerDescriptionSpec)

describe(@"UAELBLoadBalancerDescription", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBLoadBalancerDescription *loadBalancerDescription = [MTLXMLAdapter modelOfClass:[UAELBLoadBalancerDescription class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[loadBalancerDescription should] beNonNil];

	    // additional verification
	});

});

SPEC_END