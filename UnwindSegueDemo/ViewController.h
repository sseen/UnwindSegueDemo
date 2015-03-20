//
//  ViewController.h
//  UnwindSegueDemo
//
//  Created by MSDJ on 15/3/20.
//  Copyright (c) 2015年 MSDJ. All rights reserved.
//
typedef enum {
    NegativeSpaceBBT = 0,
    ActiveApaceBBT = 1
}SpaceBBT;
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

+ (UIBarButtonItem *)insertBackButton:(id)target action:(SEL)action;
+ (UIBarButtonItem *)insertSpaceBarBtn:(SpaceBBT)bbt ;

@end

