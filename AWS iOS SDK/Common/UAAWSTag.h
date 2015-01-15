//
//  UAAWSTag.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

@import Foundation;

@protocol UAAWSTag <NSObject>

- (NSString *)key;
- (void)setKey:(NSString *)key;

- (NSString *)value;
- (void)setValue:(NSString *)value;

@end