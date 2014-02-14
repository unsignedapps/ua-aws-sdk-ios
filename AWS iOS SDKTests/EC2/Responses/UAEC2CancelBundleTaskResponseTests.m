//
//  UAEC2CancelBundleTaskResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CancelBundleTaskResponse.h"
#import "UAEC2BundleInstanceS3Storage.h"
#import "UAEC2BundleInstanceStorage.h"
#import "UAEC2BundleTaskError.h"
#import "UAEC2BundleTask.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CancelBundleTaskResponseSpec)

describe(@"UAEC2CancelBundleTaskResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CancelBundleTaskResponse *cancelBundleTaskResponse = [MTLXMLAdapter modelOfClass:[UAEC2CancelBundleTaskResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[cancelBundleTaskResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END