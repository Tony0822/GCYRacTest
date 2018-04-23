//
//  Person.h
//  GCYRacTest
//
//  Created by gaochongyang on 2018/4/20.
//  Copyright © 2018年 gaochongyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

#pragma mrak - 普通的对象方法
- (void)eat;
- (void)run;

#pragma mark --写一行

- (Person *)eat2;
- (Person *)run2;

#pragma mark --普通对象方法，链式语法，带参数
- (Person *)eat3:(NSString *)food;
- (Person *)run3:(float)metter;

#pragma mark --点语法
- (void(^)(void))eat4;
- (void(^)(void))run4;

#pragma mark -- 点语法，链式，不带参数
- (Person *(^)(void))eat5;
- (Person *(^)(void))run5;

#pragma mark -- 点语法，链式，带参数
- (Person *(^)(NSString *food))eat6;
- (Person *(^)(float metter))run6;


@end
