//
//  UADDBDeleteTableResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBDeleteTableResponse.h"
#import "UADDBAttributeDefinition.h"
#import "UADDBKeySchema.h"
#import "UADDBProvisionedThroughput.h"
#import "UADDBProjection.h"
#import "UADDBLocalSecondaryIndex.h"
#import "UADDBGlobalSecondaryIndex.h"
#import "UADDBTableDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBDeleteTableResponseSpec)

describe(@"UADDBDeleteTableResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBDeleteTableResponse *deleteTableResponse = [MTLJSONAdapter modelOfClass:[UADDBDeleteTableResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteTableResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END