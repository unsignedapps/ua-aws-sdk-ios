//
//  UAKMSGetKeyPolicyResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSGetKeyPolicyResponse : UAKMSResponse

@property (nonatomic, copy) NSString *policy;

@end
