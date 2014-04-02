//
//  UADDBGlobalSecondaryIndexTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBGlobalSecondaryIndex.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"
#import "UADDBProvisionedThroughput.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBGlobalSecondaryIndexSpec)

describe(@"UADDBGlobalSecondaryIndex", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBGlobalSecondaryIndex *globalSecondaryIndex = [MTLJSONAdapter modelOfClass:[UADDBGlobalSecondaryIndex class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[globalSecondaryIndex should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END