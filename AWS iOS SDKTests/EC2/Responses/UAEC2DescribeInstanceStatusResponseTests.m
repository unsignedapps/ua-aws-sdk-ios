//
//  UAEC2DescribeInstanceStatusResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeInstanceStatusResponse.h"
#import "UAEC2InstanceStatusEvent.h"
#import "UAEC2InstanceStatusDetails.h"
#import "UAEC2InstanceStatusSummary.h"
#import "UAEC2InstanceStatus.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeInstanceStatusResponseSpec)

describe(@"UAEC2DescribeInstanceStatusResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeInstanceStatusResponse *describeInstanceStatusResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeInstanceStatusResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeInstanceStatusResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END