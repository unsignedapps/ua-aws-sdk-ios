//
//  UAEC2ReplaceNetworkACLAssociationResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReplaceNetworkACLAssociationResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReplaceNetworkACLAssociationResponseSpec)

describe(@"UAEC2ReplaceNetworkACLAssociationResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReplaceNetworkACLAssociationResponse *replaceNetworkACLAssociationResponse = [MTLXMLAdapter modelOfClass:[UAEC2ReplaceNetworkACLAssociationResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[replaceNetworkACLAssociationResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END