//
//  UASNSListPlatformApplicationsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASNSListPlatformApplicationsResponse.h"
#import "UASNSPlatformApplicationAttributes.h"
#import "UASNSPlatformApplication.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASNSListPlatformApplicationsResponseSpec)

describe(@"UASNSListPlatformApplicationsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASNSListPlatformApplicationsResponse *listPlatformApplicationsResponse = [MTLXMLAdapter modelOfClass:[UASNSListPlatformApplicationsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listPlatformApplicationsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END