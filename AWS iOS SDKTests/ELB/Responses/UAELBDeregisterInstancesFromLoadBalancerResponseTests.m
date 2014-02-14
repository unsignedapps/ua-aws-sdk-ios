//
//  UAELBDeregisterInstancesFromLoadBalancerResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBDeregisterInstancesFromLoadBalancerResponse.h"
#import "UAELBInstance.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBDeregisterInstancesFromLoadBalancerResponseSpec)

describe(@"UAELBDeregisterInstancesFromLoadBalancerResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBDeregisterInstancesFromLoadBalancerResponse *deregisterInstancesFromLoadBalancerResponse = [MTLXMLAdapter modelOfClass:[UAELBDeregisterInstancesFromLoadBalancerResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deregisterInstancesFromLoadBalancerResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END