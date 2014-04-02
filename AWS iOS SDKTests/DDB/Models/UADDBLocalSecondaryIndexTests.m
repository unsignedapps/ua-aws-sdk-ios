//
//  UADDBLocalSecondaryIndexTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBLocalSecondaryIndex.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBLocalSecondaryIndexSpec)

describe(@"UADDBLocalSecondaryIndex", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBLocalSecondaryIndex *localSecondaryIndex = [MTLJSONAdapter modelOfClass:[UADDBLocalSecondaryIndex class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[localSecondaryIndex should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END