//
//  TwoVC.m
//  KenshinPro
//
//  Created by kenshin on 17/3/16.
//  Copyright © 2017年 Kenshin. All rights reserved.
//

#import "TwoVC.h"
#import "DDZMVC.h"
#import "LockMasterAppVC.h"
#import "KenshinAppVC.h"
#import "MCClientVC.h"

@interface TwoVC ()

@end

@implementation TwoVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadData];
    [self initLockMasterAppVCUI];
    
}

- (void)loadData
{
    [self addDataWithTitle:@"锁匠App" andDetail:@"智能锁 服务端 2017-03"];
    [self addDataWithTitle:@"ddzm" andDetail:@"蓝牙+TCP 智能锁App 2016-11"];
    [self addDataWithTitle:@"MC-Service" andDetail:@"GY-像样一点的电商App 2016-07"];
    [self addDataWithTitle:@"MC-Client" andDetail:@"GY-像样一点的电商App 2016-06"];
    [self addDataWithTitle:@"Kenshin" andDetail:@"将部分不错的内容移植过来 MC工作期间开始"];
    [self addDataWithTitle:@"anyChat多人聊天-不做演示" andDetail:@"半成品 2016-03"];
    [self addDataWithTitle:@"遵移-红城先锋-不做演示" andDetail:@"协助开发 2015-11"];
    [self addDataWithTitle:@"今日红花岗-不做演示" andDetail:@"协助开发 2015-10"];
    [self addDataWithTitle:@"博文智控-不做演示" andDetail:@"第一个APP socket + 声纹码 2015-08"];
    
}

- (void)initLockMasterAppVCUI
{
    self.navigationItem.title = @"App";
    [self.view addSubview:self.tableView];
    
}

- (void)clickCellWithTitle:(NSString *)title
{

    if ([title isEqualToString:@"锁匠App"])
    {
        LockMasterAppVC *vc = [[LockMasterAppVC alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    if ([title isEqualToString:@"ddzm"])
    {
        DDZMVC *vc = [[DDZMVC alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    if ([title isEqualToString:@"MC-Client"])
    {
        MCClientVC *vc = [[MCClientVC alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    if([title isEqualToString:@"Kenshin"])
    {
        KenshinAppVC *vc = [[KenshinAppVC alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    
    
}

- (void)dealloc
{
    [Tools NSLogClassDestroy:self];
    
}



@end
