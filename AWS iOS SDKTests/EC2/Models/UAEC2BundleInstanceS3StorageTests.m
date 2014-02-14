//
//  UAEC2BundleInstanceS3StorageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2BundleInstanceS3Storage.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2BundleInstanceS3StorageSpec)

describe(@"UAEC2BundleInstanceS3Storage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2BundleInstanceS3Storage *bundleInstanceS3Storage = [MTLXMLAdapter modelOfClass:[UAEC2BundleInstanceS3Storage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[bundleInstanceS3Storage should] beNonNil];

	    // additional verification
	});

});

SPEC_END