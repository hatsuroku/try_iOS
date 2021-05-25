//
//  ViewController.h
//  Quiz
//
//  Created by 梁小顺 on 2021/5/25.
//

#import <UIKit/UIKit.h>
#import "TextDelegate.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) UILabel *eatShitLabel;
@property (strong, nonatomic) UIButton *eatShitBtn;
@property (nonatomic) BOOL eatingShit;

@property (strong, nonatomic) TextDelegate *textDelegate;
@property (strong, nonatomic) UILabel *labelName;
@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) UITextView *textView;

@end

