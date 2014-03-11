//
//  UAAWSCredentials.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/02/2014.
//
//

#import "UAMantle.h"

@interface UAAWSCredentials : UAMTLModel <UAMTLQuerySerializing>

/** Inits the credential with the access key and the secret key.
 *
 * @param accessKey The AWS Access Key
 * @param secretKey The AWS Secret Key
*/
-(id)initWithAccessKey:(NSString *)accessKey secretKey:(NSString *)secretKey;

/** Inits the credential with the access key and the secret key.
 *
 * @param theAccessKey The AWS Access Key
 * @param theSecretKey The AWS Secret Key
 * @param theSecurityToken The AWS Security Token
*/
-(id)initWithAccessKey:(NSString *)accessKey secretKey:(NSString *)secretKey securityToken:(NSString *)securityToken;

/** The AWS Access Key */
@property (nonatomic, retain) NSString *accessKey;

/** The AWS Secret Key */
@property (nonatomic, retain) NSString *secretKey;

/** The AWS Security Token, used inconjunction with Session Based Credentials. */
@property (nonatomic, retain) NSString *securityToken;

@end
