//
//  UAAWSError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import <Foundation/Foundation.h>

@protocol UAAWSError <NSObject>

- (NSError *)errorObject;

@end
