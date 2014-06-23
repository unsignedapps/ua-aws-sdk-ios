//
//  UADDBQueryFilterTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBQueryFilter.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBQueryFilterSpec)

describe(@"UADDBQueryFilter", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBQueryFilter *queryFilter = [MTLJSONAdapter modelOfClass:[UADDBQueryFilter class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[queryFilter should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END