//
//  UARDSPendingMaintenanceActionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSPendingMaintenanceAction.h"
#import "UARDSPendingMaintenanceActionDetail.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSPendingMaintenanceActionSpec)

describe(@"UARDSPendingMaintenanceAction", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSPendingMaintenanceAction *pendingMaintenanceAction = [MTLXMLAdapter modelOfClass:[UARDSPendingMaintenanceAction class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[pendingMaintenanceAction should] beNonNil];

	    // additional verification
	});

});

SPEC_END