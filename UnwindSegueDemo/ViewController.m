//
//  ViewController.m
//  UnwindSegueDemo
//
//  Created by MSDJ on 15/3/20.
//  Copyright (c) 2015年 MSDJ. All rights reserved.
//

#import "ViewController.h"
#import "BlueViewController.h"
#import "RedViewController.h"

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


- (IBAction)unwindToYellow:(UIStoryboardSegue *)unwindSegue
{
    UIViewController* sourceViewController = unwindSegue.sourceViewController;
    
    if ([sourceViewController isKindOfClass:[BlueViewController class]])
    {
        NSLog(@"Coming from BLUE!");
    }
    else if ([sourceViewController isKindOfClass:[RedViewController class]])
    {
        NSLog(@"Coming from GREEN!");
    } else {
        NSLog(@"ss o ss");
    }
}

+ (UIBarButtonItem *)insertSpaceBarBtn:(SpaceBBT)bbt {
    UIBarButtonItem *sbbt = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    int width = 6;
    if (bbt == NegativeSpaceBBT) {
        width = -width;
    }
    sbbt.width = width;
    return sbbt;
}

+ (UIBarButtonItem *)insertBackButton:(id)target action:(SEL)action{
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *image = [UIImage imageNamed:@"DefaultBack"];
    backButton.frame = CGRectMake(0.0, 0.0, image.size.width, image.size.height);
    [backButton setImage:image forState:UIControlStateNormal];
    [backButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    backItem.style = UIBarButtonItemStylePlain;
    return backItem;
}
@end
