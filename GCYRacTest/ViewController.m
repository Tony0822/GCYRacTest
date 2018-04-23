//
//  ViewController.m
//  GCYRacTest
//
//  Created by gaochongyang on 2018/4/20.
//  Copyright © 2018年 gaochongyang. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] init];
    [person eat];
    [person run];
    [[person eat2] run2];
    
    [[[person eat3:@"hahaha"] eat3:@"heiheihei"] run3:1900];
    
    [person eat4];
    [person run4];
    
    person.eat5().run5();
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
