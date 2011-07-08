//
//  PurpleHonAccountViewController.h
//  PurpleHoN
//
//  Created by Rafael Oliveira (Furduncu) on 18/06/11.
//  Copyright 2011 Rafael Oliveira. All rights reserved.
//

#import "PurpleAccountViewController.h"
#import "PurpleHoNAccountViewController.h"
#import "PurpleHoNAccount.h"
#import "packet_id.h"
#import "honprpl.h"

@interface PurpleHoNAccountViewController : PurpleAccountViewController {
    IBOutlet	NSTextField		*textField_masterServer;
	IBOutlet	NSTextField		*textField_protocolVersion;
}

@end
