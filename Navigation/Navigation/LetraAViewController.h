//
//  LetraAViewController.h
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetraAViewController : UIViewController
{
    int indexx;
    
}
@property (strong,nonatomic) NSArray *alfabeto;
@property (strong,nonatomic) NSArray *imagensAlfa;
@property (strong,nonatomic) NSArray *frasesAlfa;
@property (weak,nonatomic) NSTimer *timer;
@property (strong, nonatomic)  UIImageView *myimageview;
@property (strong, nonatomic)  UILabel *letralabel;

@end
