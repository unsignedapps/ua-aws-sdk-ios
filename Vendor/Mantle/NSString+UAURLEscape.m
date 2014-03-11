//
//  NSString+DSURLEscape.m
//  DSAWSSDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import "NSString+UAURLEscape.h"

@implementation NSString (DSURLEscape)

- (NSString *)stringByURLEscaping
{
    NSString *encoded = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ", kCFStringEncodingUTF8));
    return encoded;
}

@end
