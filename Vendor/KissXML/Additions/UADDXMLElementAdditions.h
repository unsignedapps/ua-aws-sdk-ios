@import Foundation;
#import "UADDXML.h"

// These methods are not part of the standard NSXML API.
// But any developer working extensively with XML will likely appreciate them.

@interface UADDXMLElement (UADDAUADDitions)

+ (UADDXMLElement *)elementWithName:(NSString *)name xmlns:(NSString *)ns;

- (UADDXMLElement *)elementForName:(NSString *)name;
- (UADDXMLElement *)elementForName:(NSString *)name xmlns:(NSString *)xmlns;

- (NSString *)xmlns;
- (void)setXmlns:(NSString *)ns;

- (NSString *)prettyXMLString;
- (NSString *)compactXMLString;

- (void)aUADDAttributeWithName:(NSString *)name stringValue:(NSString *)string;

- (NSDictionary *)attributesAsDictionary;

@end
