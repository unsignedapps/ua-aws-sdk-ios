//
//  UAASDescribeAutoScalingInstancesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribeAutoScalingInstancesResponse.h"
#import "UAASAutoScalingInstanceDetails.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASDescribeAutoScalingInstancesResponseSpec)

describe(@"UAASDescribeAutoScalingInstancesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASDescribeAutoScalingInstancesResponse *describeAutoScalingInstancesResponse = [MTLXMLAdapter modelOfClass:[UAASDescribeAutoScalingInstancesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeAutoScalingInstancesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END