//
//  UAASPutNotificationConfigurationResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASPutNotificationConfigurationResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASPutNotificationConfigurationResponseSpec)

describe(@"UAASPutNotificationConfigurationResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASPutNotificationConfigurationResponse *putNotificationConfigurationResponse = [MTLXMLAdapter modelOfClass:[UAASPutNotificationConfigurationResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[putNotificationConfigurationResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END