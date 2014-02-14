//
//  UAEC2ReplaceRouteTableAssociationResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReplaceRouteTableAssociationResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReplaceRouteTableAssociationResponseSpec)

describe(@"UAEC2ReplaceRouteTableAssociationResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReplaceRouteTableAssociationResponse *replaceRouteTableAssociationResponse = [MTLXMLAdapter modelOfClass:[UAEC2ReplaceRouteTableAssociationResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[replaceRouteTableAssociationResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END