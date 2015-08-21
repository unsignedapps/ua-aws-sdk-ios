//
//  UARDSDBSnapshotMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBSnapshotMessage.h"
#import "UARDSDBSnapshot.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBSnapshotMessageSpec)

describe(@"UARDSDBSnapshotMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBSnapshotMessage *dBSnapshotMessage = [MTLXMLAdapter modelOfClass:[UARDSDBSnapshotMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBSnapshotMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END