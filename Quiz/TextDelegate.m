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

@end
