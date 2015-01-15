//
//  UAKMSListGrantsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSListGrantsResponse.h"
#import "UAKMSConstraints.h"
#import "UAKMSGrant.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSListGrantsResponseSpec)

describe(@"UAKMSListGrantsResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSListGrantsResponse *listGrantsResponse = [MTLJSONAdapter modelOfClass:[UAKMSListGrantsResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listGrantsResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END