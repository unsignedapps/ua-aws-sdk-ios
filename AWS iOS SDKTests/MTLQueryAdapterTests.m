//
//  MTLQueryAdapterTests.m
//  DSAWSSDK
//
//  Created by Rob Amos on 1/02/2014.
//
//

#import <Kiwi/Kiwi.h>
#import <Mantle/Mantle.h>
#import "MTLQueryAdapter.h"

@interface MTLQueryAdapter (InternalMethods)

+ (NSString *)queryStringFromDictionary:(NSDictionary *)dictionary;

@end

SPEC_BEGIN(MTLQueryAdapterTests)

describe(@"MTLQueryAdapter", ^
{
    
    context(@"when encoding to query strings", ^
    {
        
        it(@"should encode basic string and number values", ^
        {
            NSDictionary *input =
            @{
                @"ImageId": @"ami-2bb65342",
                @"MaxCount": @3,
                @"MinCount": @1,
                @"AWSAccessKeyId": @"0GS7553JW74RRM612K02EXAMPLE",
                @"Version": @"2013-10-15",
                @"Expires": @"2010-10-10T12:00:00Z",
                @"Signature": @"lBP67vCvGlDMBQ1dofZxg8E8SUEXAMPLE",
                @"SignatureVersion": @2,
                @"SignatureMethod": @"HmacSHA256"
            };
            NSString *expectedQueryString = @"AWSAccessKeyId=0GS7553JW74RRM612K02EXAMPLE&Expires=2010-10-10T12%3A00%3A00Z&ImageId=ami-2bb65342&MaxCount=3&MinCount=1&Signature=lBP67vCvGlDMBQ1dofZxg8E8SUEXAMPLE&SignatureMethod=HmacSHA256&SignatureVersion=2&Version=2013-10-15";
            
            NSString *queryString = [MTLQueryAdapter queryStringFromDictionary:input];
            
            [[queryString should] beNonNil];
            [[queryString should] equal:expectedQueryString];
        });

        it(@"should encode basic string, number and dictionary values", ^
        {
            NSDictionary *input =
            @{
                @"ImageId": @"ami-2bb65342",
                @"MaxCount": @3,
                @"MinCount": @1,
                @"Placement": @{ @"AvailabilityZone": @"us-east-1b" },
                @"Monitoring": @{ @"Enabled": @"true" },
                @"AWSAccessKeyId": @"0GS7553JW74RRM612K02EXAMPLE",
                @"Version": @"2013-10-15",
                @"Expires": @"2010-10-10T12:00:00Z",
                @"Signature": @"lBP67vCvGlDMBQ1dofZxg8E8SUEXAMPLE",
                @"SignatureVersion": @2,
                @"SignatureMethod": @"HmacSHA256"
            };
            NSString *expectedQueryString = @"AWSAccessKeyId=0GS7553JW74RRM612K02EXAMPLE&Expires=2010-10-10T12%3A00%3A00Z&ImageId=ami-2bb65342&MaxCount=3&MinCount=1&Monitoring.Enabled=true&Placement.AvailabilityZone=us-east-1b&Signature=lBP67vCvGlDMBQ1dofZxg8E8SUEXAMPLE&SignatureMethod=HmacSHA256&SignatureVersion=2&Version=2013-10-15";
            
            NSString *queryString = [MTLQueryAdapter queryStringFromDictionary:input];
            
            [[queryString should] beNonNil];
            [[queryString should] equal:expectedQueryString];
        });

        it(@"should encode all of the values, including arrays.", ^
        {
            NSDictionary *input =
            @{
                @"ImageId": @[ @"ami-72aa081b" ],
                @"BlockDeviceMapping":
                @[
                    @{
                        @"DeviceName": @"/dev/sdj",
                        @"Ebs": @{ @"NoDevice": @"true" }
                    },
                    @{
                        @"DeviceName": @"/dev/sdh",
                        @"Ebs": @{ @"VolumeSize": @300 }
                    },
                    @{
                        @"DeviceName": @"/dev/sdc",
                        @"VirtualName": @"ephemeral1"
                    }
                ]
            };
            NSString *expectedQueryString = @"BlockDeviceMapping.1.DeviceName=%2Fdev%2Fsdj&BlockDeviceMapping.1.Ebs.NoDevice=true&BlockDeviceMapping.2.DeviceName=%2Fdev%2Fsdh&BlockDeviceMapping.2.Ebs.VolumeSize=300&BlockDeviceMapping.3.DeviceName=%2Fdev%2Fsdc&BlockDeviceMapping.3.VirtualName=ephemeral1&ImageId.1=ami-72aa081b";
            
            NSString *queryString = [MTLQueryAdapter queryStringFromDictionary:input];
            
            [[queryString should] beNonNil];
            [[queryString should] equal:expectedQueryString];
        });
    });
});


SPEC_END