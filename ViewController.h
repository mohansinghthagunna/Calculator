//
//  ViewController.h
//  Calculator
//
//  Created by Developer8 on 2/1/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblView;

@property (strong, nonatomic) IBOutlet UITextField *txtBoxOpt;

@property (strong, nonatomic) IBOutlet UIButton *btn9;

@property (strong, nonatomic) IBOutlet UIButton *btn8;

@property (strong, nonatomic) IBOutlet UIButton *btn7;
@property (strong, nonatomic) IBOutlet UIButton *btn6;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn0;
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btnEq;
@property (strong, nonatomic) IBOutlet UIButton *btnMul;
@property (strong, nonatomic) IBOutlet UIButton *btnMin;
@property (strong, nonatomic) IBOutlet UIButton *btnPlu;
@property (strong, nonatomic) IBOutlet UIButton *btnDiv;
@property (strong, nonatomic) IBOutlet UIButton *btnAc;
- (IBAction)btnClick:(UIButton *)sender;

@end

