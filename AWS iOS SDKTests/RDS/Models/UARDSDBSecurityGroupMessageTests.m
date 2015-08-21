//
//  UARDSDBSecurityGroupMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBSecurityGroupMessage.h"
#import "UARDSEC2SecurityGroup.h"
#import "UARDSIPRange.h"
#import "UARDSDBSecurityGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBSecurityGroupMessageSpec)

describe(@"UARDSDBSecurityGroupMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBSecurityGroupMessage *dBSecurityGroupMessage = [MTLXMLAdapter modelOfClass:[UARDSDBSecurityGroupMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBSecurityGroupMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END