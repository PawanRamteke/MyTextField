//
//  CustomView.h
//  TextField_Animation\
//
//  Created by KDMAC-01 on 2/11/16.
//  Copyright © 2016 NISHANT SHUKLA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (nonatomic , strong)UITextField *txtField,*txtField1;
@property (nonatomic , strong)UILabel *label;

-(instancetype)initWithFrame:(CGRect)frame withPlaceHolder:(NSString *)placeHolder;
@end
