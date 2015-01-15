//
//  UAKMSKeyTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSKey.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSKeySpec)

describe(@"UAKMSKey", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSKey *key = [MTLJSONAdapter modelOfClass:[UAKMSKey class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[key should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END