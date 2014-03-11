//
//  EXTScope.m
//  extobjc
//
//  Created by Justin Spahr-Summers on 2011-05-04.
//  Copyright (C) 2012 Justin Spahr-Summers.
//  Released under the MIT license.
//

#import "UAEXTScope.h"

void UAMTL_executeCleanupBlock (__strong UAMTL_cleanupBlock_t *block) {
    (*block)();
}

