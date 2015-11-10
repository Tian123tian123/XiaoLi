//
//  GPTabbarController.m
//  Kitchen
//
//  Created by qianfeng on 15-9-28.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import "GPTabbarController.h"
#import "WodeViewController.h"
#import "FaxianViewController.h"
#import "QingliViewController.h"
#import "GuanxiViewController.h"
#import "UIImage+QImageFrame.h"

@interface GPTabbarController ()

@end

@implementation GPTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard * wodestoryboard = [UIStoryboard storyboardWithName:@"wodeStoryboard" bundle:nil];
    UINavigationController * wodenav = [wodestoryboard instantiateInitialViewController];
    
    UIStoryboard * faxianstoryboard = [UIStoryboard storyboardWithName:@"wodeStoryboard" bundle:nil];
    UINavigationController * faxiannav = [faxianstoryboard instantiateInitialViewController];
    
    UIStoryboard * qinglistoryboard = [UIStoryboard storyboardWithName:@"qingliStoryboard" bundle:nil];
    UINavigationController * qinglinav = [qinglistoryboard instantiateInitialViewController];
    
    UIStoryboard * guanxistoryboard = [UIStoryboard storyboardWithName:@"guanxiStoryboard" bundle:nil];
    UINavigationController * guanxinav = [guanxistoryboard instantiateInitialViewController];

    
    [self setItemWithController:guanxinav.viewControllers.firstObject title:@"关系管理" imageName:@"tab_icon_grey_guanxiguanli" selectedImageName:@"tab_icon_red_guanxiguanli" storyBoard:@"guanxiStoryboard"];
   
    [self setItemWithController:qinglinav.viewControllers.firstObject title:@"情礼攻略" imageName:@"tab_icon_grey_qingligonglve" selectedImageName:@"tab_icon_red_qingligonglve" storyBoard:@"qingliStoryboard"];

    [self setItemWithController:faxiannav.viewControllers.firstObject title:@"发现" imageName:@"tab_icon_grey_faxian" selectedImageName:@"tab_icon_red_faxian" storyBoard:@"faxianStoryboard"];

    [self setItemWithController:wodenav.viewControllers.firstObject title:@"我的" imageName:@"tab_icon_grey_wode" selectedImageName:@"tab_icon_red_wode" storyBoard:@"wodeStoryboard"];
    
    self.viewControllers = @[guanxinav,qinglinav,faxiannav,wodenav];
    
}

- (void)setItemWithController:(UIViewController *)controller title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName storyBoard:(NSString *)story;
{
    controller.navigationItem.title = title;
    controller.tabBarItem.title = title;
    controller.title = title;
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageTransformtoSize:CGSizeMake(35, 35)];
    controller.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectedImage = [[UIImage imageNamed:selectedImageName] imageTransformtoSize:CGSizeMake(35, 35)];
    controller.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSDictionary * attributes = @{NSForegroundColorAttributeName:[UIColor redColor]};
    [controller.tabBarItem setTitleTextAttributes:attributes forState:UIControlStateSelected];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
