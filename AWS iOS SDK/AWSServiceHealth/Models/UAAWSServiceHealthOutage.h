//
//  UAAWSServiceHealthOutage.h
//  AWS iOS SDK
//
//  Copyright (c) Desto 2014.
//  Created by Rob Amos.
//
//

#import "UAAWSServiceHealthModel.h"
#import "UAAWSService.h"
#import "UAAWSRegion.h"

@interface UAAWSServiceHealthOutage : UAAWSServiceHealthModel

@property (nonatomic, copy) NSDate *date;
@property (nonatomic, copy) NSAttributedString *descriptionValue;
@property (nonatomic, copy) NSString *details;
@property (nonatomic) UAAWSService service;
@property (nonatomic) UAAWSRegion region;
@property (nonatomic, copy) NSString *serviceName;
@property (nonatomic) UAAWSServiceHealthOutageType type;
@property (nonatomic, copy) NSString *summary;


@end
