//
//  UARDSDBSecurityGroupTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBSecurityGroup.h"
#import "UARDSEC2SecurityGroup.h"
#import "UARDSIPRange.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBSecurityGroupSpec)

describe(@"UARDSDBSecurityGroup", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBSecurityGroup *dBSecurityGroup = [MTLXMLAdapter modelOfClass:[UARDSDBSecurityGroup class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBSecurityGroup should] beNonNil];

	    // additional verification
	});

});

SPEC_END