//
//  ViewController.m
//  Quiz
//
//  Created by 梁小顺 on 2021/5/25.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (id)init {
    if (self = [super init]) {
        _eatingShit = NO;
        _textDelegate = [[TextDelegate alloc] init];
    }
    return self;
}

- (void)setup {
    CGRect screen = [[UIScreen mainScreen] bounds];
    
    /* label and button */
    CGFloat labelWidth = 90;
    CGFloat labelHeight = 20;
    CGFloat labelTopView = 150;
    CGRect frame = CGRectMake((screen.size.width - labelWidth) / 2, labelTopView, labelWidth, labelHeight);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = @"Hello world";
    label.textAlignment = NSTextAlignmentCenter;
    _eatShitLabel = label;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"一键吃屎" forState:UIControlStateNormal];
    CGFloat buttonWidth = 100;
    CGFloat buttonHeight = 20;
    CGFloat buttonTopView = 240;
    button.frame = CGRectMake((screen.size.width - buttonWidth) / 2, buttonTopView, buttonWidth, buttonHeight);
    [button addTarget:self action:@selector(onEatShitClick:) forControlEvents:UIControlEventTouchUpInside];
    _eatShitBtn = button;
    
    /* text field and text view */
    CGFloat textFieldWidth = 223;
    CGFloat textFieldHeight = 30;
    CGFloat textFieldTopView = 150;
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake((screen.size.width - textFieldWidth) / 2, textFieldTopView, textFieldWidth, textFieldHeight)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.delegate = _textDelegate;
    textField.text = @"来吃屎";
    _textField = textField;
    
    CGFloat labelNameTextFieldSpace = 30;
    UILabel *labelName = [[UILabel alloc] initWithFrame:CGRectMake(textField.frame.origin.x, textField.frame.origin.y - labelNameTextFieldSpace, 51, 21)];
    labelName.text = @"Name: ";
    _labelName = labelName;
    
    CGFloat textViewWidth = 236;
    CGFloat textViewHeight = 198;
    CGFloat textViewTopView = 240;
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake((screen.size.width - textViewWidth) / 2, textViewTopView, textViewWidth, textViewHeight)];
    textView.text = @"你又来吃屎啦？";
    textView.delegate = _textDelegate;
    _textView = textView;
    
    
    
}

- (void)addViews {
//    [self.view addSubview:_eatShitLabel];
//    [self.view addSubview:_eatShitBtn];
    
    [self.view addSubview:_labelName];
    [self.view addSubview:_textField];
    [self.view addSubview:_textView];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setup];
    [self addViews];
}

- (void)onEatShitClick:(id)sender {
    if (_eatingShit) {
        _eatShitLabel.text = @"就是啊";
    }
    else {
        _eatShitLabel.text = @"吃屎吧";
    }
    _eatingShit = !_eatingShit;
}


@end
