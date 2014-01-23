//
//  Tarefa.m
//  IOSStudyView
//
//  Created by Matheus Marchiore on 1/22/14.
//  Copyright (c) 2014 Matheus Marchiore. All rights reserved.
//

#import "Tarefa.h"

@implementation Tarefa


@synthesize NomeTarefa, DescTarefa;


-(Tarefa *)initWithNome:(NSString *)nome descricao:(NSString *)desc{
    if (![self init]) {
        return nil;
    }
    
    self.NomeTarefa = nome;
    self.DescTarefa = desc;
    
    return self;
}
@end
