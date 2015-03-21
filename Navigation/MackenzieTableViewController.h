//
//  MackenzieTableViewController.h
//  Navigation
//
//  Created by Matheus Amancio Seixeiro on 3/19/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dicionario.h"

@interface MackenzieTableViewController : UITableViewController <UITableViewDataSource>
{
    NSMutableArray *todasLetras;
    dicionario *dicionario1;
    alfabeto *letraAtual;
}
@property (nonatomic, retain) NSArray *tabledata;

@end
