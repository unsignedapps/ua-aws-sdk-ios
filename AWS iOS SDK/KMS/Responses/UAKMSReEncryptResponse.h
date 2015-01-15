//
//  UAKMSReEncryptResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSResponse.h"

@interface UAKMSReEncryptResponse : UAKMSResponse

@property (nonatomic, copy) NSString *ciphertextBlob;
- (NSData *)decodedCiphertextBlob;
- (void)setDecodedCiphertextBlob:(NSData *)decodedCiphertextBlob;
@property (nonatomic, copy) NSString *sourceKeyID;
@property (nonatomic, copy) NSString *keyID;

@end
