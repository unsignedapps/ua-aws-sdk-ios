//
//  UARDSDownloadDBLogFilePortionDetails.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSDownloadDBLogFilePortionDetails : UARDSModel

@property (nonatomic, copy) NSString *logFileData;
@property (nonatomic, copy) NSString *marker;
@property (nonatomic) BOOL additionalDataPending;

@end
