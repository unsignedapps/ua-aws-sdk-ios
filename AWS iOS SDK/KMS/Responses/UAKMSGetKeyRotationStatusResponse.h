//
//  UAKMSGetKeyRotationStatusResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSGetKeyRotationStatusResponse : UAKMSResponse

@property (nonatomic) BOOL keyRotationEnabled;

@end
