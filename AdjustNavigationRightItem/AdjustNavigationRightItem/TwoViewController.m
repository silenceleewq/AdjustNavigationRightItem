//
//  TwoViewController.m
//  AdjustNavigationRightItem
//
//  Created by lirenqiang on 2017/1/12.
//  Copyright © 2017年 Ninja. All rights reserved.
//

#import "TwoViewController.h"
#define randomColor [UIColor colorWithHue:arc4random()%100 saturation:(arc4random()%50/100)+0.5 brightness:(arc4random() % 50 / 100) + 0.5 alpha:1]
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSMutableArray *aRrM = [NSMutableArray arrayWithCapacity:3];
    NSArray *aRr = @[@"左",  @"中", @"右"];
    
    for (NSInteger i = 0; i < aRr.count; ++i) {
        UILabel *lAbEl = [[UILabel alloc] init];
        lAbEl.text = aRr[i];
        lAbEl.backgroundColor = randomColor;
        [lAbEl sizeToFit];
        [aRrM addObject:lAbEl];
    }
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:aRrM[0]];
    self.navigationItem.titleView = aRrM[1];
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    flexItem.width = self.width;
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:aRrM[2]];
    if (self.alignment == TwoFlexAlignmentLeft) {
        self.navigationItem.rightBarButtonItems = @[flexItem, rightItem];
    } else {
        self.navigationItem.rightBarButtonItems = @[rightItem, flexItem];
    }
    
    UILabel *l1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
    UILabel *l2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 300, 30)];
    UILabel *l3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 300, 30)];
    
    [self.view addSubview:l1];
    [self.view addSubview:l2];
    [self.view addSubview:l3];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        l1.text = [NSString stringWithFormat:@"left : %@", NSStringFromCGRect([aRrM[0] frame])];
        l2.text = [NSString stringWithFormat:@"left : %@", NSStringFromCGRect([aRrM[1] frame])];
        l3.text = [NSString stringWithFormat:@"left : %@", NSStringFromCGRect([aRrM[2] frame])];
    });
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
