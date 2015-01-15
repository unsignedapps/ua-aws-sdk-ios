//
//  UAASDescribeLifecycleHooksResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribeLifecycleHooksResponse.h"
#import "UAASLifecycleHook.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASDescribeLifecycleHooksResponseSpec)

describe(@"UAASDescribeLifecycleHooksResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAASDescribeLifecycleHooksResponse *describeLifecycleHooksResponse = [MTLXMLAdapter modelOfClass:[UAASDescribeLifecycleHooksResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeLifecycleHooksResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END