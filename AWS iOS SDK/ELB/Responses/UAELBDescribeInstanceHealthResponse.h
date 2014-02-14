//
//  UAELBDescribeInstanceHealthResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBResponse.h"

@class UAELBInstanceStateDetails;

@interface UAELBDescribeInstanceHealthResponse : UAELBResponse

@property (nonatomic, copy) NSArray *instanceStates;

@end
