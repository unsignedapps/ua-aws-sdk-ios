//
//  UADDBUpdateItemResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBUpdateItemResponse.h"
#import "UADDBTableCapacity.h"
#import "UADDBLocalSecondaryIndexes.h"
#import "UADDBGlobalSecondaryIndexes.h"
#import "UADDBConsumedCapacity.h"
#import "UADDBItemCollectionMetrics.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBUpdateItemResponseSpec)

describe(@"UADDBUpdateItemResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBUpdateItemResponse *updateItemResponse = [MTLJSONAdapter modelOfClass:[UADDBUpdateItemResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[updateItemResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END