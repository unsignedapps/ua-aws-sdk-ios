//
//  UAEC2BundleTaskTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2BundleTask.h"
#import "UAEC2BundleInstanceS3Storage.h"
#import "UAEC2BundleInstanceStorage.h"
#import "UAEC2BundleTaskError.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2BundleTaskSpec)

describe(@"UAEC2BundleTask", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2BundleTask *bundleTask = [MTLXMLAdapter modelOfClass:[UAEC2BundleTask class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[bundleTask should] beNonNil];

	    // additional verification
	});

});

SPEC_END