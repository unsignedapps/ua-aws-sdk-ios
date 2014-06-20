//
//  UAAdditionalPropertyAccessorsTests.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/06/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "UACWDeleteAlarmsRequest.h"
#import "UACWGetMetricStatisticsRequest.h"
#import "UAEC2ModifyInstanceAttributeRequest.h"
#import "UADDBDeleteItemRequest.h"
#import "UADDBExpectedItem.h"

#import <objc/runtime.h>

SPEC_BEGIN(UAAdditionalPropertyAccessorsTests)

describe(@"UAAdditionalPropertyAccessorsTests", ^
{
    context(@"when testing NSArray index-based accessors", ^
    {
        it(@"should return the object at the index.", ^{

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

        it(@"should return the enum value at the index.", ^{
            
            UACWGetMetricStatisticsRequest *request = [[UACWGetMetricStatisticsRequest alloc] init];
            [request setStatistics:[@[ @(UACWStatisticSum), @(UACWStatisticSampleCount) ] mutableCopy]];
            
            // check its all good
            [[request.statistics should] haveCountOf:2];
            
            // now verify the properties
            [[theValue([request statisticAtIndex:0]) should] equal:theValue(UACWStatisticSum)];
            [[theValue([request statisticAtIndex:1]) should] equal:theValue(UACWStatisticSampleCount)];
        });
        
        it(@"should add an enum value to the array", ^{
            
            UACWGetMetricStatisticsRequest *request = [[UACWGetMetricStatisticsRequest alloc] init];
            
            [request addStatistic:UACWStatisticSum];
            [request addStatistic:UACWStatisticSampleCount];
            
            // check its all good
            [[request.statistics should] haveCountOf:2];
            
            // now verify the properties
            [[theValue([request statisticAtIndex:0]) should] equal:theValue(UACWStatisticSum)];
            [[theValue([request statisticAtIndex:1]) should] equal:theValue(UACWStatisticSampleCount)];
        });
    });
    
    context(@"when testing NSDictionary key-based accessors", ^{

//        // Not yet in use anywhere
//        it(@"should return the object at the index.", ^{
//            <#code#>
//        });
        
//        // Not yet in use anywhere
//        it(@"should return the enum value at the index", ^{
//            <#code#>
//        });
        
    });
    
    context(@"when testing DynamoDB accessors", ^{

        it(@"should return the object for the specified attribute name", ^{

            UADDBDeleteItemRequest *request = [[UADDBDeleteItemRequest alloc] init];
            
            UADDBExpectedItem *item1 = [[UADDBExpectedItem alloc] init];
            [item1 setValue:@"test1"];
            
            UADDBExpectedItem *item2 = [[UADDBExpectedItem alloc] init];
            [item2 setValue:@"test2"];
            
            [request setExpected:[@{ @"item1": item1, @"item2": item2 } mutableCopy]];
            
            // now verify
            UADDBExpectedItem *output1 = [request expectedForAttributeName:@"item1"];
            [[output1 should] equal:item1];
            [[output1.value should] equal:@"test1"];

            UADDBExpectedItem *output2 = [request expectedForAttributeName:@"item2"];
            [[output2 should] equal:item2];
            [[output2.value should] equal:@"test2"];
        });
        
        it(@"should set the specified object for the specified attribute name.", ^{

            UADDBDeleteItemRequest *request = [[UADDBDeleteItemRequest alloc] init];
            
            UADDBExpectedItem *item1 = [[UADDBExpectedItem alloc] init];
            [item1 setValue:@"test1"];
            
            UADDBExpectedItem *item2 = [[UADDBExpectedItem alloc] init];
            [item2 setValue:@"test2"];
            

            // set set
            [request setExpected:item1 forAttributeName:@"item1"];
            [request setExpected:item2 forAttributeName:@"item2"];
            
            // now verify
            UADDBExpectedItem *output1 = [request expectedForAttributeName:@"item1"];
            [[output1 should] equal:item1];
            [[output1.value should] equal:@"test1"];
            
            UADDBExpectedItem *output2 = [request expectedForAttributeName:@"item2"];
            [[output2 should] equal:item2];
            [[output2.value should] equal:@"test2"];
        });
    });
    
    context(@"when testing base64 encoding and decoding", ^{

        it(@"should decode base64 user data", ^{

            UAEC2ModifyInstanceAttributeRequest *request = [[UAEC2ModifyInstanceAttributeRequest alloc] init];
            
            [request setUserData:@"VGhpcyBpcyBhIHRlc3Qgc3RyaW5nLg=="];
            
            [[request.userData should] equal:@"VGhpcyBpcyBhIHRlc3Qgc3RyaW5nLg=="];
            
            [[request.decodedUserData should] equal:@"This is a test string."];
        });

        it(@"should encode base64 user data", ^{
            
            UAEC2ModifyInstanceAttributeRequest *request = [[UAEC2ModifyInstanceAttributeRequest alloc] init];
            
            [request setDecodedUserData:@"This is a test string."];
            
            [[request.decodedUserData should] equal:@"This is a test string."];
            [[request.userData should] equal:@"VGhpcyBpcyBhIHRlc3Qgc3RyaW5nLg=="];
        });

    });
});

SPEC_END