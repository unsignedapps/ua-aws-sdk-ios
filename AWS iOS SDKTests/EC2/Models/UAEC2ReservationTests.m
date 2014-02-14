//
//  UAEC2ReservationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2Reservation.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2ProductCode.h"
#import "UAEC2Placement.h"
#import "UAEC2StateReason.h"
#import "UAEC2EBSInstanceBlockDevice.h"
#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2InstanceLicense.h"
#import "UAEC2Tag.h"
#import "UAEC2InstanceNetworkInterfaceAttachment.h"
#import "UAEC2InstanceNetworkInterfaceAssociation.h"
#import "UAEC2InstancePrivateIPAddress.h"
#import "UAEC2InstanceNetworkInterface.h"
#import "UAEC2IAMInstanceProfile.h"
#import "UAEC2Instance.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReservationSpec)

describe(@"UAEC2Reservation", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2Reservation *reservation = [MTLXMLAdapter modelOfClass:[UAEC2Reservation class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservation should] beNonNil];

	    // additional verification
	});

});

SPEC_END