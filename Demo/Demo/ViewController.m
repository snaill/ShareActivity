//
//  ViewController.m
//  Demo
//
//  Created by Snaill on 15/8/11.
//  Copyright (c) 2015年 Snaill. All rights reserved.
//

#import "ViewController.h"
#import "ShareTo.h"

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

- (IBAction)onButtonClicked:(id)sender {
    
    NSArray * activity = [ShareTo activitys];
    NSMutableArray * activityItems = [NSMutableArray array];
    
    [activityItems addObject:@"this is a test."];
    [activityItems addObject:[UIImage imageNamed:@"Pie"]];
    [activityItems addObject:[NSURL URLWithString:@"http://baidu.com"]];

    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:activity];
    [self presentViewController:activityView animated:YES completion:nil];
}
@end
