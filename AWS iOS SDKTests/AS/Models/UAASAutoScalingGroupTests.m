//
//  UAASAutoScalingGroupTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASAutoScalingGroup.h"
#import "UAASInstance.h"
#import "UAASSuspendedProcess.h"
#import "UAASEnabledMetric.h"
#import "UAASTag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASAutoScalingGroupSpec)

describe(@"UAASAutoScalingGroup", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASAutoScalingGroup *autoScalingGroup = [MTLXMLAdapter modelOfClass:[UAASAutoScalingGroup class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[autoScalingGroup should] beNonNil];

	    // additional verification
	});

});

SPEC_END