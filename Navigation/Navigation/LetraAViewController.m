//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "dicionario.h"


@implementation LetraAViewController


@synthesize alfabeto;
@synthesize frasesAlfa;
@synthesize imagensAlfa;
@synthesize timer;
@synthesize myimageview;
@synthesize letralabel;


// criando um botao na tab bar


-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"alfabeto";
    UIImage *imagem = [UIImage imageNamed: @"aa"];
    self.tabBarItem.image = imagem;
    }
    return self;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    CGFloat selfHeight=self.view.bounds.size.height;
    CGFloat selfWidth=self.view.bounds.size.width;
    dicionario1 = [dicionario sharedInstance];
    todasLetras = [dicionario1 getcaixa];
    indexx  = (int)(self.navigationController.viewControllers.count-1);
    
    letraAtual = [todasLetras objectAtIndex:indexx];

 
    
    //self.navigationItem.title = [alfabeto objectAtIndex: indexx];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
 
    
    //letra
    letralabel = [[UILabel alloc]init];
    [letralabel setText:letraAtual.letra];
    letralabel.textAlignment = NSTextAlignmentCenter;
    letralabel.frame = CGRectMake( selfWidth/2 - 70, 0, 50, 50);
    [letralabel setFont:[UIFont fontWithName:@"American Typewriter" size:50]];
    [self.view addSubview:letralabel];
    
    //frase na tela
    UILabel *fraseLabel = [[UILabel alloc]init];
    [fraseLabel setText:letraAtual.frase];
    fraseLabel.textAlignment = NSTextAlignmentCenter;
    fraseLabel.frame = CGRectMake(selfWidth/2 - 100, selfHeight/2 - 100, 200, 40);
    [self.view addSubview:fraseLabel];

    //imagem na tela
    UIImage* myImage = [UIImage imageNamed:letraAtual.imagem];
    myimageview = [[UIImageView alloc] initWithImage:myImage];
    fraseLabel.textAlignment = NSTextAlignmentCenter;
   [myimageview setFrame:CGRectMake(selfWidth/2 - 100, selfHeight/2 , 200, 200)];
    [self.view addSubview:myimageview];
    [self setNeedsStatusBarAppearanceUpdate];
    [myimageview setAlpha:0];
    
    
//mudancas na view
    self.view.backgroundColor = [UIColor whiteColor];
    
//Botões

     }

-(void)viewWillAppear:(BOOL)animated
{}

-(void)next:(id)sender {
    if (indexx ==25) {
        indexx = 0;
        [self. navigationController popToRootViewControllerAnimated:YES];
    }
    
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.view.backgroundColor = [UIColor redColor];
    [UIView animateWithDuration:5.0 animations:^{
        self.view.backgroundColor = [UIColor whiteColor];    }];

}



    
-(void)viewDidAppear:(BOOL)animated
{   //animacao da imagem
    CGFloat selfHeight=self.view.bounds.size.height;
    CGFloat selfWidth=self.view.bounds.size.width;
   
    [UIView animateWithDuration:1 delay:0.5 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [myimageview setAlpha:1];
    } completion:^(BOOL finished){
        
        
    }];
    
    // animacao da letra

    [UIView animateWithDuration:0.4 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 -110);
    } completion:^(BOOL finished){
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{ letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 -140);} completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 - 110);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{ letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 -120);} completion:^(BOOL finished) {
                [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                    letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 - 110);
                } completion:^(BOOL finished) {
                    
                }];
            }];

            
        }];
        }];
        
    }];
}

-(NSArray *)getAlpha
{
    return alfabeto;
}




@end


