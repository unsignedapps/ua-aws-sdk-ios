//
//  UAEC2VolumeStatusDetailTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VolumeStatusDetail.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VolumeStatusDetailSpec)

describe(@"UAEC2VolumeStatusDetail", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VolumeStatusDetail *volumeStatusDetail = [MTLXMLAdapter modelOfClass:[UAEC2VolumeStatusDetail class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[volumeStatusDetail should] beNonNil];

	    // additional verification
	});

});

SPEC_END