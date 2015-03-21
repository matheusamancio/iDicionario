//
//  dicionario.h
//  Navigation
//
//  Created by Matheus Amancio Seixeiro on 3/20/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "alfabeto.h"

@interface dicionario : NSObject
{
    NSMutableArray *caixa;
}

-(void)guardarLetra: (NSString *)let andFrase: (NSString *)fra andImagem: (NSString*)ima ;
+(instancetype)sharedInstance;
-(NSMutableArray *)getcaixa;

@end
