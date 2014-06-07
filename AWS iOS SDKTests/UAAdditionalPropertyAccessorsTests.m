//
//  UAAdditionalPropertyAccessorsTests.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/06/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "UACWDeleteAlarmsRequest.h"

SPEC_BEGIN(UAAdditionalPropertyAccessorsTests)

describe(@"UAAdditionalPropertyAccessorsTests", ^
{
    context(@"when testing NSArray index-based accessors", ^
    {
        it(@"should return the object at the index.", ^
        {
            UACWDeleteAlarmsRequest *request = [[UACWDeleteAlarmsRequest alloc] init];
            [request setAlarmNames:[@[ @"test1", @"test2" ] mutableCopy]];
            
            // check its all good
            [[request.alarmNames should] haveCountOf:2];
            
            // now verify the properties
            [[[request alarmNameAtIndex:0] should] equal:@"test1"];
            [[[request alarmNameAtIndex:1] should] equal:@"test2"];
        });
        
        it(@"should add an object to the array", ^{

            UACWDeleteAlarmsRequest *request = [[UACWDeleteAlarmsRequest alloc] init];

            [request addAlarmName:@"test1"];
            [request addAlarmName:@"test2"];
            
            // check its all good
            [[request.alarmNames should] haveCountOf:2];
            
            // now verify the properties
            [[[request alarmNameAtIndex:0] should] equal:@"test1"];
            [[[request alarmNameAtIndex:1] should] equal:@"test2"];
        });
    });
});

SPEC_END