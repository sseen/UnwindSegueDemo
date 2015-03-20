//
//  BlueViewController.m
//  UnwindSegueDemo
//
//  Created by MSDJ on 15/3/20.
//  Copyright (c) 2015年 MSDJ. All rights reserved.
//

#import "BlueViewController.h"
#import "RedViewController.h"
#import "ViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//    NSArray *leftItems = [NSArray arrayWithObjects:
//                          [ViewController insertSpaceBarBtn:NegativeSpaceBBT],
//                          [ViewController insertBackButton:self action:@selector(showHomeTO:)],nil];
//    self.navigationItem.leftBarButtonItems = leftItems;
//}
//
//- (void)showHomeTO:(UIButton *)sender {
//    [self.navigationController popViewControllerAnimated:YES];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)unwindToBlue:(UIStoryboardSegue *)unwindSegue
{
    UIViewController* sourceViewController = unwindSegue.sourceViewController;
    
    if ([sourceViewController isKindOfClass:[BlueViewController class]])
    {
        NSLog(@"Coming from BLUE!");
    }
    else if ([sourceViewController isKindOfClass:[RedViewController class]])
    {
        NSLog(@"Coming from GREEN!");
    }
}


@end
