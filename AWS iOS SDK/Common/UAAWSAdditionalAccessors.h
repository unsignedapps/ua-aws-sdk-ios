//
//  UAAWSAdditionalAccessors.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 16/06/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAAWSRequest.h"
#import "UAAWSModel.h"
#import "UAAWSResponse.h"

@interface UAAWSRequest (AdditionalPropertyAccessors)

- (void)UA_addAtIndexAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAtIndexEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAddObjectAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAddEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDictionaryKeyValueAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDictionaryKeyValueEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDecodeBase64AdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addEncodeBase64AdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDDBKeyValueAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addSetObjectForKeyAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addSetEnumForKeyAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;

@end

@interface UAAWSModel (AdditionalPropertyAccessors)

- (void)UA_addAtIndexAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAtIndexEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAddObjectAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAddEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDictionaryKeyValueAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDictionaryKeyValueEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDecodeBase64AdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addEncodeBase64AdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDDBKeyValueAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addSetObjectForKeyAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addSetEnumForKeyAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;

@end

@interface UAAWSResponse (AdditionalPropertyAccessors)

- (void)UA_addAtIndexAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAtIndexEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAddObjectAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addAddEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDictionaryKeyValueAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDictionaryKeyValueEnumAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDecodeBase64AdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addEncodeBase64AdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addDDBKeyValueAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addSetObjectForKeyAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;
- (void)UA_addSetEnumForKeyAdditionalAccessorForSelector:(SEL)selector propertyName:(NSString *)propertyName;

@end