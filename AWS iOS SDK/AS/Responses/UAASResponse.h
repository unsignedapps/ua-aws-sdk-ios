//
//  UAASResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import <Mantle/Mantle.h>
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAASDataTypes.h"

@interface UAASResponse : UAAWSResponse <MTLXMLSerializing>

@property (nonatomic, strong) NSString *requestID;

@end
