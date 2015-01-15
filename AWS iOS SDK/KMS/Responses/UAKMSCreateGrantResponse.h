//
//  UAKMSCreateGrantResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSCreateGrantResponse : UAKMSResponse

@property (nonatomic, copy) NSString *grantToken;
@property (nonatomic, copy) NSString *grantID;

@end
