//
//  Person.m
//  GCYRacTest
//
//  Created by gaochongyang on 2018/4/20.
//  Copyright © 2018年 gaochongyang. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)eat {
    NSLog(@"eat");
}

- (void)run {
    NSLog(@"run");
}

- (Person *)eat2 {
    [self eat];
    return self;
}

- (Person *)run2 {
    [self run];
    return self;
}

- (Person *)eat3:(NSString *)food {
    NSLog(@"eat: %@", food);
    return self;
}

- (Person *)run3:(float)metter {
    NSLog(@"run: %f", metter);
    return self;
}

- (void (^)(void))eat4 {
    void(^eat4Block)(void) = ^(void) {
        NSLog(@"eat4");
    };
    return eat4Block;
}

- (void (^)(void))run4 {
    return ^(void) {
        NSLog(@"run4");
    };
}
- (Person *(^)(void))eat5 {
    Person *(^eat5Block)(void) = ^{
        NSLog(@"eat5");
        return self;
    };
    return eat5Block;
}

- (Person *(^)(void))run5 {
    return ^{
        NSLog(@"run 5");
        return self;
    };
}

- (Person *(^)(NSString *))eat6 {
    Person *(^eat6Block)(NSString *food) = ^(NSString *food){
        NSLog(@"");
        return self;
    };
    return eat6Block;
}



@end
