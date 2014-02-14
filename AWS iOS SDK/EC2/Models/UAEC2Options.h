//
//  UAEC2Options.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2Options : UAEC2Model

@property (nonatomic) BOOL staticRoutesOnly;

- (id)initWithStaticRoutesOnly:(BOOL)staticRoutesOnly;

@end
