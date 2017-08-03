//
//  ViewController.m
//  textField
//
//  Created by Lee on 2017/7/25.
//  Copyright © 2017年 Lee. All rights reserved.
//
#import "tableViewVCTableViewController.h"
#import "ViewController.h"
#import "PDAPlaceOrderViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)asdf:(id)sender {
    PDAPlaceOrderViewController *ta = [[PDAPlaceOrderViewController alloc] init];
    UIWindow *wind = [UIApplication sharedApplication].keyWindow;
    wind.rootViewController = ta;
}
@end
