//
//  UAEC2KeyPair.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2KeyPair : UAEC2Model

@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, copy) NSString *keyFingerprint;

@end
