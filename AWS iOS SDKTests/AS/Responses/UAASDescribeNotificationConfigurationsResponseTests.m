//
//  UAASDescribeNotificationConfigurationsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribeNotificationConfigurationsResponse.h"
#import "UAASNotificationConfiguration.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASDescribeNotificationConfigurationsResponseSpec)

describe(@"UAASDescribeNotificationConfigurationsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASDescribeNotificationConfigurationsResponse *describeNotificationConfigurationsResponse = [MTLXMLAdapter modelOfClass:[UAASDescribeNotificationConfigurationsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeNotificationConfigurationsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END