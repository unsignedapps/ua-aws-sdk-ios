//
//  UAEC2NetworkACLAssociationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2NetworkACLAssociation.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2NetworkACLAssociationSpec)

describe(@"UAEC2NetworkACLAssociation", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2NetworkACLAssociation *networkACLAssociation = [MTLXMLAdapter modelOfClass:[UAEC2NetworkACLAssociation class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[networkACLAssociation should] beNonNil];

	    // additional verification
	});

});

SPEC_END