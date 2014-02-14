//
//  UAELBDeleteLoadBalancerResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBDeleteLoadBalancerResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBDeleteLoadBalancerResponseSpec)

describe(@"UAELBDeleteLoadBalancerResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBDeleteLoadBalancerResponse *deleteLoadBalancerResponse = [MTLXMLAdapter modelOfClass:[UAELBDeleteLoadBalancerResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteLoadBalancerResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END