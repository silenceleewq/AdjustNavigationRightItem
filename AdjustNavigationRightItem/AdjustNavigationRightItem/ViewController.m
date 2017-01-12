//
//  ViewController.m
//  AdjustNavigationRightItem
//
//  Created by lirenqiang on 2017/1/12.
//  Copyright © 2017年 Ninja. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *width;
@property (weak, nonatomic) IBOutlet UISwitch *aligmentSwitch;

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

- (IBAction)nextC:(id)sender {
    TwoViewController *two = [[TwoViewController alloc] init];
    two.width = self.width.text.integerValue;
    two.alignment = self.aligmentSwitch.isOn;
    [self.navigationController pushViewController:two animated:YES];
}

@end
