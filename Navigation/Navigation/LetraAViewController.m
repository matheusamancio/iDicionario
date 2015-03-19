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
        [super viewDidLoad];    CGFloat selfHeight=self.view.bounds.size.height;
    CGFloat selfWidth=self.view.bounds.size.width;
    alfabeto =[[NSArray alloc]init];
    frasesAlfa = [[NSArray alloc]init];
    imagensAlfa = [[NSArray alloc]init];
    
    
    alfabeto = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
    
    frasesAlfa = @[ @"mor",@"aixinho",@"oração",@"ocinho",@"scola",@"eijão",@"ente",@"umano",@"I de igualdade",@"J juventude",@"k de kiko",@" L de liberdade",@"k de kiko",@"M molecagem",@"N natureza ",@"O obrigado ",@"P proteção",@"Q de queijo",@"R de riacho ",@" S sadia ",@" T de Terra",@"U de universo ",@"V de vitoria",@"W de Wolverine",@"X O que que é? - É Xuxa!",@"youtube",@"Z é zum, zum, zum, zum"];
    
    imagensAlfa = @[@"arvore", @"bola", @"casa",@"dado",@"elefante",@"fanta",@"gordo",@"hidrante",@"iphone",@"jetski",@"kiko", @"leao", @"macaco", @"nariz",@"orelha", @"palhaco",@"queijo",@"requeijao", @"sal", @"tatu",@"umpa",@"vitoria", @"wolverine", @"xuxa", @"youtube",@"zebra"];
    
    
    indexx  = self.navigationController.viewControllers.count-1;
    self.title = [alfabeto objectAtIndex: indexx];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
 
    UILabel *letralabel = [[UILabel alloc]init];
  
    [letralabel setText:[alfabeto objectAtIndex:indexx]];
    letralabel.textAlignment = NSTextAlignmentCenter;
    letralabel.backgroundColor = [UIColor redColor];
  
    //letra na tela
   letralabel.frame = CGRectMake( selfWidth/2 - 25, selfHeight/2 - 150, 50, 50);
    [letralabel setFont:[UIFont fontWithName:@"American Typewriter" size:50]];
    [self.view addSubview:letralabel];
    
    //frase na tela
    UILabel *fraseLabel = [[UILabel alloc]init];
    [fraseLabel setText:[frasesAlfa objectAtIndex:indexx]];
    fraseLabel.textAlignment = NSTextAlignmentCenter;
    fraseLabel.frame = CGRectMake(selfWidth/2 - 100, selfHeight/2 - 20, 200, 40);
    fraseLabel.backgroundColor = [UIColor redColor];
//    [fraseLabel sizeToFit];
    [self.view addSubview:fraseLabel];

    //imagem na tela
    
    UIImage *myImage = [UIImage imageNamed:[imagensAlfa objectAtIndex:indexx]];
    UIImageView *myImageView = [[UIImageView alloc] initWithImage:myImage];
    fraseLabel.textAlignment = NSTextAlignmentCenter;
    [myImageView setFrame:CGRectMake(selfWidth/2 - 100, selfHeight/2 + 50, 200, 200)];
    [self.view addSubview:myImageView];
  
    
//mudancas na view
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIImageView *imagem = [[UIImageView alloc] initWithFrame:CGRectMake(selfWidth/2 - 100, selfHeight/2 - 100,200,200)];
//      
//    imagem.image = [UIImage imageNamed:@"arvore"];
//    //[imagensAlfa objectAtIndex: indexx]];
    

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


@end
