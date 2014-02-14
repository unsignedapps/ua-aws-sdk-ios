//
//  UAELBDescribeLoadBalancerPoliciesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBDescribeLoadBalancerPoliciesResponse.h"
#import "UAELBPolicyAttributeDescription.h"
#import "UAELBPolicyDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBDescribeLoadBalancerPoliciesResponseSpec)

describe(@"UAELBDescribeLoadBalancerPoliciesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBDescribeLoadBalancerPoliciesResponse *describeLoadBalancerPoliciesResponse = [MTLXMLAdapter modelOfClass:[UAELBDescribeLoadBalancerPoliciesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeLoadBalancerPoliciesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END