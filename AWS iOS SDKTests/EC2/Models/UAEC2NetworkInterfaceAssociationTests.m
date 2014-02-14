//
//  UAEC2NetworkInterfaceAssociationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2NetworkInterfaceAssociation.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2NetworkInterfaceAssociationSpec)

describe(@"UAEC2NetworkInterfaceAssociation", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2NetworkInterfaceAssociation *networkInterfaceAssociation = [MTLXMLAdapter modelOfClass:[UAEC2NetworkInterfaceAssociation class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[networkInterfaceAssociation should] beNonNil];

	    // additional verification
	});

});

SPEC_END