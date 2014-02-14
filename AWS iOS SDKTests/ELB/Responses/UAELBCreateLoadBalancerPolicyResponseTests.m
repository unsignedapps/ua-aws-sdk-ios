//
//  UAELBCreateLoadBalancerPolicyResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBCreateLoadBalancerPolicyResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBCreateLoadBalancerPolicyResponseSpec)

describe(@"UAELBCreateLoadBalancerPolicyResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBCreateLoadBalancerPolicyResponse *createLoadBalancerPolicyResponse = [MTLXMLAdapter modelOfClass:[UAELBCreateLoadBalancerPolicyResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createLoadBalancerPolicyResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END