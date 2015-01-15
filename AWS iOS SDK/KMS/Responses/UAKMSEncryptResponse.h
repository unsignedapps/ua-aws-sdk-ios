//
//  UAKMSEncryptResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSEncryptResponse : UAKMSResponse

@property (nonatomic, copy) NSString *ciphertextBlob;
- (NSData *)decodedCiphertextBlob;
- (void)setDecodedCiphertextBlob:(NSData *)decodedCiphertextBlob;
@property (nonatomic, copy) NSString *keyID;

@end
