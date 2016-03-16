//
//  CustomView.m
//  TextField_Animation\
//
//  Created by KDMAC-01 on 2/11/16.
//  Copyright © 2016 NISHANT SHUKLA. All rights reserved.
//

#import "CustomView.h"

@interface  CustomView()<UITextFieldDelegate>
{
    UIView *separator;
}
@end
@implementation CustomView
@synthesize txtField,txtField1;
@synthesize label;
-(instancetype)initWithFrame:(CGRect)frame withPlaceHolder:(NSString *)placeHolder
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
        [self createTextField:placeHolder];
    }
    return self;
}

-(void)createTextField:(NSString *)placeHolder
{
    label = [[UILabel alloc]initWithFrame:CGRectMake(0 ,CGRectGetMidY(self.bounds)-15, CGRectGetWidth(self.frame), 30)];
    label.text = placeHolder;
    label.font = [UIFont fontWithName:@"ArialMT" size:13];
    label.textColor = [UIColor redColor];
    [self addSubview:label];
    
    txtField = [[UITextField alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(label.frame), CGRectGetWidth(self.frame), 40)];
    txtField.backgroundColor = [UIColor clearColor];
    txtField.font = [UIFont fontWithName:@"Arial" size:17];
    txtField.delegate = self;
    [self addSubview:txtField];
    
    separator = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMinX(txtField.frame), CGRectGetMaxY(txtField.frame)-10, CGRectGetWidth(txtField.frame), 2)];
    separator.backgroundColor = [UIColor blueColor];
    [separator setUserInteractionEnabled:NO];
    [self addSubview:separator];
    [self bringSubviewToFront:label];

}


-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [UIView animateWithDuration:0.5 animations:^{
        }];
    if (textField.text.length == 0)
    {
        [UIView animateWithDuration:0.5 animations:^{
            label.textColor = [UIColor redColor];
            label.frame = CGRectMake(0, (CGRectGetMinY(label.frame)-CGRectGetHeight(txtField.frame))+10, 100, 40);
        }];
    }
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    label.textColor = [UIColor brownColor];

    if (textField.text.length == 0)
    {
        label.textColor = [UIColor redColor];
        [UIView animateWithDuration:0.5 animations:^{
            label.frame = CGRectMake(0 ,CGRectGetMidY(self.bounds)-15, CGRectGetWidth(self.frame), 30);
            
            [self bringSubviewToFront:label];
        }];

    }
    
}




@end
