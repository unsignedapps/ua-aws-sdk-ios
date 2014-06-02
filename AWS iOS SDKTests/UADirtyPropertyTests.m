//
//  UADirtyPropertyTests.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/06/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "UACWDescribeAlarmsRequest.h"

SPEC_BEGIN(UADirtyPropertyTests)

describe(@"UAAWSDirtyPropertyTests", ^
{
    it(@"should have no (extra) dirty properties", ^{

        UACWDescribeAlarmsRequest *request = [[UACWDescribeAlarmsRequest alloc] init];

        // there should be two, the action and version
        [[request.UA_dirtyProperties should] beNonNil];
        [[request.UA_dirtyProperties should] haveCountOf:2];
        
        [[theValue([request.UA_dirtyProperties containsObject:@"action"]) should] beYes];
        [[theValue([request.UA_dirtyProperties containsObject:@"version"]) should] beYes];
    });

    it(@"should mark the properties as dirty", ^
    {
        UACWDescribeAlarmsRequest *request = [[UACWDescribeAlarmsRequest alloc] init];
        [[request.UA_dirtyProperties should] beNonNil];
        
        // now set properties and check they are marked dirty
        [request setAlarmNames:[@[@"Test"] mutableCopy]];
        [[request.UA_dirtyProperties should] haveCountOf:3];
        [[theValue([request.UA_dirtyProperties containsObject:@"alarmNames"]) should] beYes];

        [request setAlarmNamePrefix:@"Test"];
        [[request.UA_dirtyProperties should] haveCountOf:4];
        [[theValue([request.UA_dirtyProperties containsObject:@"alarmNamePrefix"]) should] beYes];

        [request setStateValue:UACWAlarmStateOK];
        [[request.UA_dirtyProperties should] haveCountOf:5];
        [[theValue([request.UA_dirtyProperties containsObject:@"stateValue"]) should] beYes];

        [request setActionPrefix:@"Test"];
        [[request.UA_dirtyProperties should] haveCountOf:6];
        [[theValue([request.UA_dirtyProperties containsObject:@"actionPrefix"]) should] beYes];

        [request setActionPrefix:@"Test"];
        [[request.UA_dirtyProperties should] haveCountOf:6];
        [[theValue([request.UA_dirtyProperties containsObject:@"actionPrefix"]) should] beYes];

        [request setMaxRecords:@10];
        [[request.UA_dirtyProperties should] haveCountOf:7];
        [[theValue([request.UA_dirtyProperties containsObject:@"maxRecords"]) should] beYes];

        [request setNextToken:@"Test"];
        [[request.UA_dirtyProperties should] haveCountOf:8];
        [[theValue([request.UA_dirtyProperties containsObject:@"nextToken"]) should] beYes];
    });
});

SPEC_END