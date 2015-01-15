//
//  UAKMSListAliasesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSListAliasesResponse.h"
#import "UAKMSAlias.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSListAliasesResponseSpec)

describe(@"UAKMSListAliasesResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSListAliasesResponse *listAliasesResponse = [MTLJSONAdapter modelOfClass:[UAKMSListAliasesResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listAliasesResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END