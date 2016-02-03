//
//  ViewController.m
//  Calculator
//
//  Created by Developer8 on 2/1/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import "ViewController.h"
#import "ArthmaticOperation.h"

@interface ViewController ()

@end
@implementation ViewController
ArthmaticOperation *calcObj;
- (void)viewDidLoad {
    [super viewDidLoad];
    calcObj = [ArthmaticOperation new];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(UIButton *)sender {
   
    NSString *btnItem = [[NSString alloc] initWithString: sender.currentTitle];
    
  
    
    if([btnItem isEqualToString:@"+"] ||[btnItem isEqualToString:@"-"]||[btnItem isEqualToString:@"*"]||[btnItem isEqualToString:@"/"])
    {
        if([self.lblView.text containsString:@"="]){
            self.lblView.text=@"";
        }
        
        self.lblView.text = [self.lblView.text stringByAppendingString:self.txtBoxOpt.text];
        self.lblView.text = [self.lblView.text stringByAppendingString:btnItem];
        
        [calcObj setValue:self.txtBoxOpt.text];
        [calcObj setOperatorValue:btnItem];
        self.txtBoxOpt.text = NULL;
        
        
    }
    else if([btnItem isEqualToString:@"="])
    {
          [calcObj setValue:self.txtBoxOpt.text];
         self.lblView.text = [self.lblView.text stringByAppendingString:self.txtBoxOpt.text];
         self.lblView.text = [self.lblView.text stringByAppendingString:btnItem];
        [calcObj setOperatorValue:btnItem];
      
         self.txtBoxOpt.text = [NSString stringWithFormat:@"%.2f" ,[calcObj result]];
       
    }
    else if([btnItem isEqualToString:@"AC"]){
        self.txtBoxOpt.text = @"";
        self.lblView.text = @"";
       // [calcObj release];
       calcObj=[ArthmaticOperation new];
    }
    else
    {
        self.txtBoxOpt.text = [self.txtBoxOpt.text stringByAppendingString:btnItem];
    }
  

}
@end
