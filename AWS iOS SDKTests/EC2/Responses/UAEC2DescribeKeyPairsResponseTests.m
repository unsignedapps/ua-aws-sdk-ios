//
//  UAEC2DescribeKeyPairsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeKeyPairsResponse.h"
#import "UAEC2KeyPair.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeKeyPairsResponseSpec)

describe(@"UAEC2DescribeKeyPairsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeKeyPairsResponse *describeKeyPairsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeKeyPairsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeKeyPairsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END