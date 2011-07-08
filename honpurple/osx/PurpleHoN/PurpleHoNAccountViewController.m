//
//  PurpleHonAccountViewController.m
//  PurpleHoN
//
//  Created by Rafael Oliveira (Furduncu) on 18/06/11.
//  Copyright 2011 Rafael Oliveira. All rights reserved.
//

#import "PurpleHoNAccountViewController.h"
#import <Adium/AIAccount.h>
#import <Adium/AIContactControllerProtocol.h>
#import <Adium/AIService.h>
#import <Adium/AIContactList.h>
#import <SystemConfiguration/SystemConfiguration.h>

@implementation PurpleHoNAccountViewController

- (NSString *)nibName{
    return @"PurpleHoNAccountView";
}

- (void)awakeFromNib
{
	[super awakeFromNib];
}

//Configure our controls
//If an empty value for an option is loaded, function will replace it with default value
- (void)configureForAccount:(AIAccount *)inAccount
{
    [super configureForAccount:inAccount];
	NSString *decimalString = [NSString stringWithFormat:@"%d", HON_PROTOCOL_VERSION];
	
	//Master server
	NSString *masterServer = [account preferenceForKey:KEY_MASTER_SERVER group:GROUP_ACCOUNT_STATUS];
	[textField_masterServer setStringValue:(masterServer ? masterServer : [NSString stringWithFormat:@"%s", HON_DEFAULT_MASTER_SERVER])];
	
	//Protocol Version
	NSString *protocolVersion = [account preferenceForKey:PROT_VER_NSSTRING group:GROUP_ACCOUNT_STATUS];
	[textField_protocolVersion setStringValue:(protocolVersion ?: decimalString)];	
}

//Save controls
//If the user tries to save an empty string the function will replace with default values
- (void)saveConfiguration
{
    [super saveConfiguration];
	NSString *decimalString = [NSString stringWithFormat:@"%d", HON_PROTOCOL_VERSION];

	//Master server
	[account setPreference:([[textField_masterServer stringValue] length] ? 
							[textField_masterServer stringValue] : [NSString stringWithFormat:@"%s", HON_DEFAULT_MASTER_SERVER])
					forKey:KEY_MASTER_SERVER group:GROUP_ACCOUNT_STATUS];
	
	//Protocol Version
	[account setPreference:([[textField_protocolVersion stringValue] length] ? [textField_protocolVersion stringValue] : decimalString)
					forKey:PROT_VER_NSSTRING group:GROUP_ACCOUNT_STATUS];
}

- (void)dealloc {
	[[NSNotificationCenter defaultCenter] removeObserver:self];
	[super dealloc];
}

@end
