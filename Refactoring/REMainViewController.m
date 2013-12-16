//
// Created by semnil on 12/16/13.
// Copyright (c) 2013 Tetsuya Shinone. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "REMainViewController.h"


@implementation REMainViewController {

}

static int s_tensu = 0;
static int s_imadoko = 0;
static int s_nokori = 30 * 5;

- (void)viewDidLoad {
    // create label
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 35, 270, 20)];
    [label setText:[NSString stringWithFormat:@"%d", s_tensu]];
    [label setBackgroundColor:[UIColor colorWithRed:0.8f green:0.8f blue:0.8f alpha:1.0f]];
    [label setTag:100];
    [self.view addSubview:label];

    // create button1
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 70, 120, 45)];
    [button setTag:101];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"タマ"];
    [label setTag:1];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button2
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 130, 120, 45)];
    [button setTag:102];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"モモ"];
    [label setTag:2];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button3
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 190, 120, 45)];
    [button setTag:103];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"トラ"];
    [label setTag:3];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button4
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 250, 120, 45)];
    [button setTag:104];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"ベー"];
    [label setTag:4];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button5
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 310, 120, 45)];
    [button setTag:105];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"ノラ"];
    [label setTag:5];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button6
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 370, 120, 45)];
    [button setTag:106];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"コマ"];
    [label setTag:6];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button7
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(30, 430, 120, 45)];
    [button setTag:107];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"シロ"];
    [label setTag:7];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button8
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(170, 70, 120, 45)];
    [button setTag:108];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"クロ"];
    [label setTag:8];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button9
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(170, 130, 120, 45)];
    [button setTag:109];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"ヒメ"];
    [label setTag:9];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button10
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(170, 190, 120, 45)];
    [button setTag:110];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"レオ"];
    [label setTag:10];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button11
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(170, 250, 120, 45)];
    [button setTag:111];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"ソラ"];
    [label setTag:11];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button12
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(170, 310, 120, 45)];
    [button setTag:112];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"ルナ"];
    [label setTag:12];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button13
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(170, 370, 120, 45)];
    [button setTag:113];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"リン"];
    [label setTag:13];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create button14
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(170, 430, 120, 45)];
    [button setTag:114];
    [button addTarget:self action:@selector(ぼたんがおされた:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    label = [[UILabel alloc] initWithFrame:button.frame];
    [label setBackgroundColor:[UIColor colorWithRed:0.7f green:0.7f blue:0.7f alpha:1.0f]];
    [label setText:@"ジャンゴ"];
    [label setTag:14];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:label];

    // create timers
    [((UILabel *) [self.view viewWithTag:100]) setText:@"よ〜い・・・"];
    NSTimer *timer = [NSTimer timerWithTimeInterval:3.0f target:self selector:@selector(かっこよく消す) userInfo:nil repeats:NO];
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}

- (IBAction)ぼたんがおされた:(id)sender {
    int tag = [sender tag] - 100;
    int maeno_tensu = s_tensu;
    switch (tag) {
        case 1:
            if (s_imadoko == 1)
                s_tensu +=1;
            break;

        case 2:
            if (s_imadoko == 2)
                s_tensu +=1;
            break;

        case 3:
            if (s_imadoko == 3)
                s_tensu +=1;
            break;

        case 4:
            if (s_imadoko == 4)
                s_tensu +=1;
            break;

        case 5:
            if (s_imadoko == 5)
                s_tensu +=1;
            break;

        case 6:
            if (s_imadoko == 6)
                s_tensu +=1;
            break;

        case 7:
            if (s_imadoko == 7)
                s_tensu +=1;
            break;

        case 8:
            if (s_imadoko == 8)
                s_tensu +=1;
            break;

        case 9:
            if (s_imadoko == 9)
                s_tensu +=1;
            break;

        case 10:
            if (s_imadoko == 10)
                s_tensu +=1;
            break;

        case 11:
            if (s_imadoko == 11)
                s_tensu +=1;
            break;

        case 12:
            if (s_imadoko == 12)
                s_tensu +=1;
            break;

        case 13:
            if (s_imadoko == 13)
                s_tensu +=1;
            break;

        case 14:
            if (s_imadoko == 14)
                s_tensu +=1;
            break;

        default:
            break;
    }
    if (maeno_tensu != s_tensu)
        [self SE再生];
}

- (void)かっこよく消す {
    static int imadoko = 1;

    [UIView animateWithDuration:0.3f animations:^{
        [[self.view viewWithTag:imadoko] setAlpha:0.0f];
    }];

    if (imadoko++ < 14) {
        NSTimer *timer = [NSTimer timerWithTimeInterval:0.1f target:self selector:@selector(かっこよく消す) userInfo:nil repeats:NO];
        [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    } else {
        [((UILabel *) [self.view viewWithTag:100]) setText:@"すた〜と！"];
        NSTimer *timer = [NSTimer timerWithTimeInterval:2.0f target:self selector:@selector(タイマーメソッド1) userInfo:nil repeats:YES];
        [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];

        timer = [NSTimer timerWithTimeInterval:0.2f target:self selector:@selector(タイマーメソッド2) userInfo:nil repeats:YES];
        [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    }
}

- (void)タイマーメソッド1 {
    unsigned long val = arc4random();
    int val2 = 0;

    if (s_nokori <= 0)
        return;

    if (val < ULONG_MAX / 14)
        val2 = 1;
    else if (val < ULONG_MAX / 14 * 2)
        val2 = 2;
    else if (val < ULONG_MAX / 14 * 3)
        val2 = 3;
    else if (val < ULONG_MAX / 14 * 4)
        val2 = 4;
    else if (val < ULONG_MAX / 14 * 5)
        val2 = 5;
    else if (val < ULONG_MAX / 14 * 6)
        val2 = 6;
    else if (val < ULONG_MAX / 14 * 7)
        val2 = 7;
    else if (val < ULONG_MAX / 14 * 8)
        val2 = 8;
    else if (val < ULONG_MAX / 14 * 9)
        val2 = 9;
    else if (val < ULONG_MAX / 14 * 10)
        val2 = 10;
    else if (val < ULONG_MAX / 14 * 11)
        val2 = 11;
    else if (val < ULONG_MAX / 14 * 12)
        val2 = 12;
    else if (val < ULONG_MAX / 14 * 13)
        val2 = 13;
    else
        val2 = 14;

    switch (val2) {
        case 1:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:1] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:1] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 2:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:2] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:2] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 3:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:3] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:3] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 4:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:4] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:4] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 5:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:5] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:5] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 6:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:6] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:6] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 7:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:7] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:7] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 8:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:8] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:8] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 9:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:9] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:9] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 10:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:10] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:10] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 11:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:11] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:11] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 12:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:12] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:12] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 13:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:13] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:13] setAlpha:0.0f];
                }];
            }];
        }
            break;

        case 14:
        {
            [UIView animateWithDuration:1.5f animations:^{
                [[self.view viewWithTag:14] setAlpha:1.0f];
            } completion:^(BOOL finished){
                [UIView animateWithDuration:0.5f animations:^{
                    [[self.view viewWithTag:14] setAlpha:0.0f];
                }];
            }];
        }
            break;

        default:
            break;
    }

    s_imadoko = val2;
}

- (void)タイマーメソッド2 {
    if (s_tensu > 0 && s_nokori > 0) {
        s_nokori -= 1;
        [((UILabel *)[self.view viewWithTag:100]) setText:[NSString stringWithFormat:@"ただいまの点数 %d点, 残り %d秒", s_tensu, s_nokori / 5]];
        if (s_nokori <= 0) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"おつかれさまでした" message:@"" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertView show];
        }
    }
}

- (void)SE再生 {
    static AVAudioPlayer *player = nil;
    if (player == nil) {
        NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"cat" ofType:@"aif"];
        NSURL *file = [[NSURL alloc] initFileURLWithPath:soundPath];
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:file error:nil];
        [player setDelegate:self];
        [player prepareToPlay];
    }
    if ([player isPlaying]) {
        [player setCurrentTime:0.0f];
    } else
        [player play];
}

@end