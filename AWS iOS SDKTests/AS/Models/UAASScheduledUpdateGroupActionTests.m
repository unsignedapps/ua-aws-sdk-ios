//
//  UAASScheduledUpdateGroupActionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASScheduledUpdateGroupAction.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASScheduledUpdateGroupActionSpec)

describe(@"UAASScheduledUpdateGroupAction", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASScheduledUpdateGroupAction *scheduledUpdateGroupAction = [MTLXMLAdapter modelOfClass:[UAASScheduledUpdateGroupAction class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[scheduledUpdateGroupAction should] beNonNil];

	    // additional verification
	});

});

SPEC_END