//
//  PRViewController.m
//  MyTextField
//
//  Created by Pawan on 03/16/2016.
//  Copyright (c) 2016 Pawan. All rights reserved.
//

#import "PRViewController.h"
#import <MyTextField/CustomView.h>
@interface PRViewController ()

@end

@implementation PRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CustomView *txtField = [[CustomView alloc]initWithFrame:CGRectMake(0, 50, 300, 50) withPlaceHolder:@"Placeholder"];
    [self.view addSubview:txtField];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
