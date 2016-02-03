//
//  ArthmaticOperation.m
//  Calculator
//
//  Created by Developer8 on 2/1/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import "ArthmaticOperation.h"

@implementation ArthmaticOperation

-(void) setValue:(NSString *)valueData{
    
    if(highOperatorSelect==3 || highOperatorSelect==4)
    {
         if(highOperatorSelect==3)
        {
            secondValue=[valueData doubleValue]*secondValue;
        }
        else if(highOperatorSelect==4)
        {
            secondValue=secondValue/[valueData doubleValue];
        }
        if( operatorSelect==0){
             result = secondValue;
        }
    }
    else if( operatorSelect==1 || operatorSelect==2 )
    {
        secondValue=[valueData doubleValue];
    
    }
    else
    {
        firstValue = [valueData doubleValue];
        if(highOperatorSelect ==0)
        {
            secondValue=[valueData doubleValue];

        }
    }
    

}

-(void) setOperatorValue:(NSString *)valueOperator{
   
    
    
    
   
   
    if([valueOperator isEqualToString:@"+"])
    {
        if(operatorSelect !=0)
        {
            [self calculation:operatorSelect];
            
        }
        operatorSelect=1;
        highOperatorSelect=0;
    }
    else if([valueOperator isEqualToString:@"-"])
    {
        if(operatorSelect !=0)
        {
            [self calculation:operatorSelect];
            
        }
        operatorSelect=2;
        highOperatorSelect=0;
    }
    else if([valueOperator isEqualToString:@"*"])
    {
        highOperatorSelect=3;
        
    }
    else if([valueOperator isEqualToString:@"/"])
    {
        highOperatorSelect=4;
    }
    else
    {
        [self calculation:operatorSelect];
        operatorSelect=0;
        highOperatorSelect=0;
    }

}

-(double) result{
    [self calculation:operatorSelect];
    return result;
}
-(void) calculation:(int)option{
   
    if(option==1)
    {
        result=firstValue+secondValue;
    }
    else if(option==2)
    {
         result=firstValue-secondValue;
    }
  
    firstValue=result;
}

@end
