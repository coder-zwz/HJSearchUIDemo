//
//  RootViewController.m
//  HJSectionSearch
//
//  Created by zwz on 2017/4/26.
//  Copyright © 2017年 zwz. All rights reserved.
//

#import "RootViewController.h"
#import "HJSectionSearchController.h"
#import "HJHeaderSearchController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)headerSearchClick:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"DisplaySearch" bundle:nil];
    HJHeaderSearchController *vc = [sb instantiateViewControllerWithIdentifier:@"HJHeaderSearchController"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)sectionSearchClick:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"DisplaySearch" bundle:nil];
    HJSectionSearchController *vc = [sb instantiateViewControllerWithIdentifier:@"HJSectionSearchController"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
