//
//  UADDBGlobalSecondaryIndexUpdateTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBGlobalSecondaryIndexUpdate.h"
#import "UADDBProvisionedThroughput.h"
#import "UADDBUpdate.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBGlobalSecondaryIndexUpdateSpec)

describe(@"UADDBGlobalSecondaryIndexUpdate", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBGlobalSecondaryIndexUpdate *globalSecondaryIndexUpdate = [MTLJSONAdapter modelOfClass:[UADDBGlobalSecondaryIndexUpdate class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[globalSecondaryIndexUpdate should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END