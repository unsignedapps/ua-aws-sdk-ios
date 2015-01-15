//
//  UAKMSDecryptResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSDecryptResponse : UAKMSResponse

@property (nonatomic, copy) NSString *keyID;
@property (nonatomic, copy) NSString *plaintext;
- (NSData *)decodedPlaintext;
- (void)setDecodedPlaintext:(NSData *)decodedPlaintext;

@end
