//
//  NSString+DSURLEscape.h
//  DSAWSSDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

@import Foundation;

@interface NSString (DSURLEscape)

- (NSString *)stringByURLEscaping;
- (NSString *)stringByURLUnescaping;

@end
