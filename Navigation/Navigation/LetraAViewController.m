//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"

@implementation LetraAViewController


@synthesize alfabeto;
@synthesize frasesAlfa;
@synthesize imagensAlfa;
@synthesize timer;
@synthesize myimageview;
@synthesize letralabel;


-(void) viewDidLoad {
    [super viewDidLoad];
    CGFloat selfHeight=self.view.bounds.size.height;
    CGFloat selfWidth=self.view.bounds.size.width;
    alfabeto =[[NSArray alloc]init];
    frasesAlfa = [[NSArray alloc]init];
    imagensAlfa = [[NSArray alloc]init];
    
    

    alfabeto = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
    
    frasesAlfa = @[ @"mor",@"aixinho",@"oração",@"ocinho",@"scola",@"eijão",@"ente",@"umano",@"gualdade",@"etski",@"iko",@" iberdade",@"acaco",@"atureza ",@"brigado ",@"roteção",@"ueijo",@"iacho ",@" adia ",@" erra",@"niverso ",@"itoria",@"olverine",@"uxa!",@"outube",@"ebra"];
    
    imagensAlfa = @[@"arvore", @"bola", @"casa",@"dado",@"elefante",@"fanta",@"gordo",@"hidrante",@"iphone",@"jetski",@"kiko", @"leao", @"macaco", @"nariz",@"orelha", @"palhaco",@"queijo",@"requeijao", @"sal", @"tatu",@"umpa",@"vitoria", @"wolverine", @"xuxa", @"youtube",@"zebra"];
    
    
    indexx  = (int)(self.navigationController.viewControllers.count-1);
    self.title = [alfabeto objectAtIndex: indexx];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
 
    letralabel = [[UILabel alloc]init];
  
    [letralabel setText:[alfabeto objectAtIndex:indexx]];
    letralabel.textAlignment = NSTextAlignmentCenter;
    
  
    //letra na tela
   letralabel.frame = CGRectMake( selfWidth/2 - 70, 0, 50, 50);
    [letralabel setFont:[UIFont fontWithName:@"American Typewriter" size:50]];
    [self.view addSubview:letralabel];
    
    //frase na tela
    UILabel *fraseLabel = [[UILabel alloc]init];
    [fraseLabel setText:[frasesAlfa objectAtIndex:indexx]];
    fraseLabel.textAlignment = NSTextAlignmentCenter;
    fraseLabel.frame = CGRectMake(selfWidth/2 - 100, selfHeight/2 - 80, 200, 40);
  
//    [fraseLabel sizeToFit];
    [self.view addSubview:fraseLabel];

    //imagem na tela
    
    UIImage* myImage = [UIImage imageNamed:[imagensAlfa objectAtIndex:indexx]];
    myimageview = [[UIImageView alloc] initWithImage:myImage];
    fraseLabel.textAlignment = NSTextAlignmentCenter;
   [myimageview setFrame:CGRectMake(selfWidth/2 - 100, selfHeight/2 +50, 200, 200)];
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
        letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 - 90);
    } completion:^(BOOL finished){
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{ letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 -120);} completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 - 90);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{ letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 -100);} completion:^(BOOL finished) {
                [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                    letralabel.transform = CGAffineTransformMakeTranslation(0, selfHeight/2 - 90);
                } completion:^(BOOL finished) {
                    
                }];
            }];

            
        }];
        }];
        
    }];
}





@end


