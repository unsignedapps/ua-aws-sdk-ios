//
//  UAEC2PrivateIPAddressSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2PrivateIPAddressSpecification.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2PrivateIPAddressSpecificationSpec)

describe(@"UAEC2PrivateIPAddressSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2PrivateIPAddressSpecification *privateIPAddressSpecification = [MTLXMLAdapter modelOfClass:[UAEC2PrivateIPAddressSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[privateIPAddressSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END