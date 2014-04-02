//
//  UADDBDeleteItemResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBDeleteItemResponse.h"
#import "UADDBAttributes.h"
#import "UADDBTable.h"
#import "UADDBLocalSecondaryIndexes.h"
#import "UADDBGlobalSecondaryIndexes.h"
#import "UADDBConsumedCapacity.h"
#import "UADDBItemCollectionKey.h"
#import "UADDBItemCollectionMetrics.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBDeleteItemResponseSpec)

describe(@"UADDBDeleteItemResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBDeleteItemResponse *deleteItemResponse = [MTLJSONAdapter modelOfClass:[UADDBDeleteItemResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteItemResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END