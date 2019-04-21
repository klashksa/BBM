//
//  Tweak.xm
//
//
//  Created by @Y_Dagriri on 21/04/19.
//  Copyright © 2019 @Y_Dagriri. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.klashksa.BBM++byKlash.plist"

inline bool GetPrefBool(NSString *key) {
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

//is Typing
%hook BBMTypingNotificationMessage
-(BOOL)isTyping {
if(GetPrefBool(@"key1")) {
return FALSE;
}
return %orig;
}

%end

//is read
%hook BBMMessage
-(BOOL)canBeMarkedRead {       
if(GetPrefBool(@"key2")) {
return FALSE;
}
return %orig;
}
%end

//all messages are read
%hook BBMConversationCellViewModel
-(BOOL)hasUnreadMessages {
if(GetPrefBool(@"key3")) {
return FALSE;
}
return %orig;
}

%end


//Disable Screenshot for Temporary messages
%hook BBMCoreAccess
-(void)markEphemeralMessageAsScreenshotted:(id)fp8 {
if(GetPrefBool(@"key4")) {
fp8 = NULL;
}
return %orig(fp8);
}

%end




//Unlimited Time for Temporary messages
%hook BBMEphemeralMetaData
-(BOOL)messageTimerIsActive {
if(GetPrefBool(@"key5")) {
return FALSE;
}
return %orig;
}

-(double)remainingTime {
if(GetPrefBool(@"key5")) {
return 99999999;
}
return %orig;
}


%end

//Unlimited Ping
%hook BBMPingLimitHelper
-(BOOL)isLimitReached {
if(GetPrefBool(@"key6")) {
return FALSE;
}
return %orig;
}

%end



%hook BBMAppDelegate 
- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 { 
UIAlertView *igcredits = [[UIAlertView alloc] initWithTitle:@"⚫️ BBM++ ⚫️" 
                                                  message:@"To Active the hack go to Settings ⚙ Hacked by 【қłΔѕн۩қѕΔ】"
                                                 delegate:self 
                                                                                cancelButtonTitle:@"❌" 
                                                                                otherButtonTitles:@"✔️", nil]; 
[igcredits show];
[igcredits release]; 
return %orig();
}
 
%new
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
 
NSString *button = [alertView buttonTitleAtIndex:buttonIndex];
 
        if([button isEqualToString:@"✔️"])
        {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://sites.google.com/view/klashksa1/home"]];                                                                                
        }
}
%end
