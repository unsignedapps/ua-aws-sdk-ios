//
//  UAELBDescribeLoadBalancerPolicyTypesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBDescribeLoadBalancerPolicyTypesResponse.h"
#import "UAELBPolicyAttributeTypeDescription.h"
#import "UAELBPolicyTypeDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBDescribeLoadBalancerPolicyTypesResponseSpec)

describe(@"UAELBDescribeLoadBalancerPolicyTypesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBDescribeLoadBalancerPolicyTypesResponse *describeLoadBalancerPolicyTypesResponse = [MTLXMLAdapter modelOfClass:[UAELBDescribeLoadBalancerPolicyTypesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeLoadBalancerPolicyTypesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END