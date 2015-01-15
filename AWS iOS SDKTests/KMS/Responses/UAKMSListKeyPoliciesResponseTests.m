//
//  UAKMSListKeyPoliciesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSListKeyPoliciesResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSListKeyPoliciesResponseSpec)

describe(@"UAKMSListKeyPoliciesResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSListKeyPoliciesResponse *listKeyPoliciesResponse = [MTLJSONAdapter modelOfClass:[UAKMSListKeyPoliciesResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listKeyPoliciesResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END