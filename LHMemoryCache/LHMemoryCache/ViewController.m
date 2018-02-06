//
//  ViewController.m
//  LHMemoryCache
//
//  Created by feeyo on 2018/2/2.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "ViewController.h"
#import "LHArray.h"

@interface ViewController ()

@property  (nonatomic, strong)  LHArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.array = [[LHArray alloc]init];
    [self.array addObject:@"1"];
    [self.array addObject:@"2"];
    [self.array addObject:@"3"];
    [self.array addObject:@"4"];
    NSLog(@"%ld",self.array.count);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
