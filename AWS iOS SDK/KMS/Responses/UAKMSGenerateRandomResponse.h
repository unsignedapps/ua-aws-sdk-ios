//
//  UAKMSGenerateRandomResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSGenerateRandomResponse : UAKMSResponse

@property (nonatomic, copy) NSString *plaintext;
- (NSData *)decodedPlaintext;
- (void)setDecodedPlaintext:(NSData *)decodedPlaintext;

@end
