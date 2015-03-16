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

-(void) viewDidLoad {
        [super viewDidLoad];
    
    CGFloat selfHeight=self.view.bounds.size.height;
    CGFloat selfWidth=self.view.bounds.size.width;
    alfabeto =[[NSArray alloc]init];
    frasesAlfa = [[NSArray alloc]init];
    imagensAlfa = [[NSArray alloc]init];
    
    alfabeto = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
    
    frasesAlfa = @[ @"A de amor",@"B de baixinho",@"C de coração",@"D de docinho",@"E de escola",@"F de feijão",@"G de gente",@"H de humano",@"I de igualdade",@"J juventude",@" L liberdade",@"M molecagem",@"N natureza ",@"O obrigado ",@"P proteção",@"Q de quero quero",@"R de riacho ",@" S saudade ",@" T de Terra",@"U de universo ",@"V de vitoria",@"W de Wolverine",@"X O que que é? - É Xuxa!",@"Z é zum, zum, zum, zum"];
    
    indexx  = self.navigationController.viewControllers.count-1;
    self.title = [alfabeto objectAtIndex: indexx];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
  
    UILabel *letralabel = [[UILabel alloc]init];
  
    [letralabel setText:[alfabeto objectAtIndex:indexx]];
    letralabel.textAlignment = NSTextAlignmentCenter;
    letralabel.backgroundColor = [UIColor redColor];
    
   letralabel.frame = CGRectMake( selfWidth/2 - 25, selfHeight/2 - 150, 50, 50);
//    [letralabel sizeToFit];
    [self.view addSubview:letralabel];
    
    UILabel *fraseLabel = [[UILabel alloc]init];
    [fraseLabel setText:[frasesAlfa objectAtIndex:indexx]];
    fraseLabel.textAlignment = NSTextAlignmentCenter;
    fraseLabel.frame = CGRectMake(selfWidth/2 - 100, selfHeight/2 - 20, 200, 40);
    [fraseLabel sizeToFit];
    [self.view addSubview:fraseLabel];

 
}


-(void)next:(id)sender {
    
    
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                              initWithNibName:nil
                                            bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
    
}




@end
