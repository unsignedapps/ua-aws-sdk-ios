//
//  UAEC2EnableVolumeIOResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2EnableVolumeIOResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2EnableVolumeIOResponseSpec)

describe(@"UAEC2EnableVolumeIOResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2EnableVolumeIOResponse *enableVolumeIOResponse = [MTLXMLAdapter modelOfClass:[UAEC2EnableVolumeIOResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[enableVolumeIOResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END