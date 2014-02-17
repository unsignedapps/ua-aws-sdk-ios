//
//  UAIAMListGroupsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@class UAIAMGroup;

@interface UAIAMListGroupsResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *groups;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

@end
