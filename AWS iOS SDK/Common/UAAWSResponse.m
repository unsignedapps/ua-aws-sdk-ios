//
//  UAAWSResponse.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import "UAAWSResponse.h"
#import "UAHeaderMapping.h"

@implementation UAAWSResponse

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

- (void)UAPopulateMappingsForHeaders:(NSDictionary *)headers
{
    if (![self conformsToProtocol:@protocol(UAHeaderMapping)])
        return;
    
    UAAWSResponse<UAHeaderMapping> *protocolSelf = (UAAWSResponse<UAHeaderMapping> *)self;
    NSDictionary *mappings = [protocolSelf.class UAHeaderMappingsByPropertyKey];
    if (mappings == nil || [mappings count] == 0)
        return;
    
    // we have mappings!
    for (NSString *key in mappings)
    {
        NSString *headerKey = [mappings objectForKey:key];
        if (![headerKey isEqual:[NSNull null]])
        {
            id headerValue = [headers objectForKey:headerKey];
            [self setValue:headerValue forKey:key];
        }
    }
}

@end
