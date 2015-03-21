//
//  dicionario.m
//  Navigation
//
//  Created by Matheus Amancio Seixeiro on 3/20/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "dicionario.h"



static NSString *arrayLetras[] = {@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"};

static NSString *arrayFrases[] =  { @"mor",@"aixinho",@"oração",@"ocinho",@"scola",@"eijão",@"ente",@"umano",@"gualdade",@"etski",@"iko",@" iberdade",@"acaco",@"atureza ",@"brigado ",@"roteção",@"ueijo",@"iacho ",@" adia ",@" erra",@"niverso ",@"itoria",@"olverine",@"uxa!",@"outube",@"ebra"};

static NSString *arrayImagens[] = {@"arvore", @"bola", @"casa",@"dado",@"elefante",@"fanta",@"gordo",@"hidrante",@"iphone",@"jetski",@"kiko", @"leao", @"macaco", @"nariz",@"orelha", @"palhaco",@"queijo",@"requeijao", @"sal", @"tatu",@"umpa",@"vitoria", @"wolverine", @"xuxa", @"youtube",@"zebra"};
static dicionario *inst = nil;

@implementation dicionario

+(instancetype)sharedInstance
{
    if ( inst== nil){
               inst = [[dicionario alloc] init];
    }
 
        return inst;
}

-(instancetype)init
{
    self =  [super self];
    if(self)
    {
        caixa = [[NSMutableArray alloc]init];
        for(int i = 0; i<=25;i++)
        {
            [self guardarLetra:arrayLetras[i] andFrase:arrayFrases[i] andImagem:arrayImagens[i]];
            
        }
        
    }
    return self;
}

-(void)guardarLetra:(NSString *)let andFrase:(NSString *)fra andImagem:(NSString *)ima
{
    alfabeto * alpha = [[alfabeto alloc]init];
    [alpha setLetra:let];
    [alpha setFrase:fra];
    [alpha setImagem:ima];
    [caixa addObject: alpha];
    
}
-(NSMutableArray *)getcaixa
{
    return caixa;
}
@end
