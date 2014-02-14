//
//  UAEC2BundleInstanceStorageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2BundleInstanceStorage.h"
#import "UAEC2BundleInstanceS3Storage.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2BundleInstanceStorageSpec)

describe(@"UAEC2BundleInstanceStorage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2BundleInstanceStorage *bundleInstanceStorage = [MTLXMLAdapter modelOfClass:[UAEC2BundleInstanceStorage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[bundleInstanceStorage should] beNonNil];

	    // additional verification
	});

});

SPEC_END