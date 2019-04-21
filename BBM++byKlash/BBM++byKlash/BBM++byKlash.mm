#include "BBM++byKlashListController.h"
#include "objc/runtime.h"
#import <Preferences/PSListController.h>

@interface ListController: PSListController{
}
@end

@implementation ListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BBM++byKlash" target:self] retain];
	}
	return _specifiers;
}


- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://sites.google.com/view/klashksa1/home"]];
} 


-(void)credits {
UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle:@"BBM++" message:@"Hacked by 【қłΔѕн۩қѕΔ】" delegate:self cancelButtonTitle:@"✔️" otherButtonTitles:nil];
[alert1 show];
}
 
@end

// vim:ft=objc
