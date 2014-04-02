//
//  UADDBUpdateItemRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBUpdateItemRequest.h"
#import "UADDBAttributeUpdate.h"
#import "UADDBExpectedItem.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBUpdateItemRequestSpec)

describe(@"UADDBUpdateItemRequest", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBUpdateItemRequest *updateItemRequest = [MTLJSONAdapter modelOfClass:[UADDBUpdateItemRequest class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[updateItemRequest should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END