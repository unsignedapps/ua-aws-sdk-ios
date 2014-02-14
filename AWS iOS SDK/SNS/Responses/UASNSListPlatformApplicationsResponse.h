//
//  UASNSListPlatformApplicationsResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSResponse.h"

@class UASNSPlatformApplication;

@interface UASNSListPlatformApplicationsResponse : UASNSResponse

@property (nonatomic, copy) NSArray *platformApplications;
@property (nonatomic, copy) NSString *nextToken;

@end
