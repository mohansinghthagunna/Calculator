//
//  ArthmaticOperation.h
//  Calculator
//
//  Created by Developer8 on 2/1/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArthmaticOperation : NSObject
{
    double firstValue;
    double secondValue;
    	int operatorSelect;
    int highOperatorSelect;
    double result;
    
}

-(void) setValue:(NSString *)valueData;
-(void) setOperatorValue:(NSString *)valueOperator;
-(void) calculation:(int)option;
-(double) result;

@end
