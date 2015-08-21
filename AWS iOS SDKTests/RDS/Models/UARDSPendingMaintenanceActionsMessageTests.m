//
//  UARDSPendingMaintenanceActionsMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSPendingMaintenanceActionsMessage.h"
#import "UARDSPendingMaintenanceActionDetail.h"
#import "UARDSPendingMaintenanceAction.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSPendingMaintenanceActionsMessageSpec)

describe(@"UARDSPendingMaintenanceActionsMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSPendingMaintenanceActionsMessage *pendingMaintenanceActionsMessage = [MTLXMLAdapter modelOfClass:[UARDSPendingMaintenanceActionsMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[pendingMaintenanceActionsMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END