//
//  UAELBPoliciesTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAELBPolicies.h"
#import "UAELBAppCookieStickinessPolicy.h"
#import "UAELBLBCookieStickinessPolicy.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAELBPoliciesSpec)

describe(@"UAELBPolicies", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAELBPolicies *policies = [MTLXMLAdapter modelOfClass:[UAELBPolicies class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[policies should] beNonNil];

	    // additional verification
	});

});

SPEC_END