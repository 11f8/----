//
//  TESTViewController.m
//  TESTJOB
//
//  Created by jome on 13-6-13.
//  Copyright (c) 2013年 jome. All rights reserved.
//

#import "TESTViewController.h"

@interface TESTViewController ()
{
    UIView *infoView;
}
@end

@implementation TESTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:infoView];
    
    infoView=[[UIView alloc] initWithFrame:CGRectMake(20, 100,220, 280)];//范围，出了这个范围就检测不到触摸了
    infoView.backgroundColor=[UIColor blueColor];
    infoView.alpha=0.6;
    [self.view addSubview:infoView];
    /******************监视手势控制*****************///有上下左右，我只用到了左右，上下注掉了。
    UISwipeGestureRecognizer *recognizer;
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    
    [infoView addGestureRecognizer:recognizer];
        recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
        [recognizer setDirection:(UISwipeGestureRecognizerDirectionUp)];
     [self.view addGestureRecognizer:recognizer];
        recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
        [recognizer setDirection:(UISwipeGestureRecognizerDirectionDown)];
       [self.view addGestureRecognizer:recognizer];
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    [infoView addGestureRecognizer:recognizer];
    
    //触摸事件 的实现函数
    //滑动事件1
 }
-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer{
    //如果往左滑
    if(recognizer.direction==UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"****************向左滑****************");
    }
    //如果往右滑
    if(recognizer.direction==UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"****************向右滑****************");
    }
    if (recognizer.direction==UISwipeGestureRecognizerDirectionDown){
        NSLog(@"****************向下滑****************");
    }
    if (recognizer.direction==UISwipeGestureRecognizerDirectionUp){
        NSLog(@"****************向上滑****************");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
