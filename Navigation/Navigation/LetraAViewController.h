//
//  LetraAViewController.h
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dicionario.h"

@interface LetraAViewController : UIViewController
{
    int indexx;
    NSMutableArray *todasLetras;
    dicionario *dicionario1;
    alfabeto *letraAtual;
    
}
@property (strong,nonatomic) NSArray *alfabeto;
@property (strong,nonatomic) NSArray *imagensAlfa;
@property (strong,nonatomic) NSArray *frasesAlfa;
@property (weak,nonatomic) NSTimer *timer;
@property (strong, nonatomic)  UIImageView *myimageview;
@property (strong, nonatomic)  UILabel *letralabel;

-(NSArray *)getAlpha;
+(instancetype)sharedInstance;
@end
