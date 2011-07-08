//
//  PurpleHoNAccount.h
//  PurpleHoN
//
//  Created by Dopefish on 2010-10-10.
//  Copyright 2010 David Rudie. All rights reserved.
//

#import <AdiumLibpurple/CBPurpleAccount.h>
#import "PurpleHoNService.h"

#define KEY_HON_COMMANDS @"HON:Commands"
#define KEY_MASTER_SERVER @"masterserver"
#define KEY_MASTER_SERVER_HON "masterserver"
#define PROT_VER_NSSTRING @"protover"

@interface PurpleHoNAccount : CBPurpleAccount {}
@end