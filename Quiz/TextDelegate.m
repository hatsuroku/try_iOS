//
//  TextFieldDelegate.m
//  Quiz
//
//  Created by 梁小顺 on 2021/5/25.
//

#import <Foundation/Foundation.h>
#import "TextDelegate.h"

@implementation TextDelegate

#pragma mark -- UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"TextField get focused, click enter button");
    [textField resignFirstResponder];
    return YES;
}

#pragma mark -- UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        NSLog(@"TextView get focused, click enter button");
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

#pragma mark -- manage keyboard notifications
- (void)registerNotification {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
}

- (void)unregisterNotification {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidHideNotification object:nil];
}

-(void) keyboardDidShow:(NSNotification *)notification {
    NSLog(@"键盘打开");
}

-(void) keyboardDidHide:(NSNotification *)notification {
    NSLog(@"键盘关闭");
}

@end
