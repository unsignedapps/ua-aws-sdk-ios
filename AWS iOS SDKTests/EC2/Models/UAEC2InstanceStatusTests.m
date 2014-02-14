//
//  UAEC2InstanceStatusTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstanceStatus.h"
#import "UAEC2InstanceStatusEvent.h"
#import "UAEC2InstanceStatusDetails.h"
#import "UAEC2InstanceStatusSummary.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstanceStatusSpec)

describe(@"UAEC2InstanceStatus", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstanceStatus *instanceStatus = [MTLXMLAdapter modelOfClass:[UAEC2InstanceStatus class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instanceStatus should] beNonNil];

	    // additional verification
	});

});

SPEC_END