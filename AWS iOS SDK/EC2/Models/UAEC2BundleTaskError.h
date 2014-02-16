//
//  UAEC2BundleTaskError.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2BundleTaskError : UAEC2Model

@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;

@end
