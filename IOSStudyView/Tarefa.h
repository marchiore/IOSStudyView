//
//  Tarefa.h
//  IOSStudyView
//
//  Created by Matheus Marchiore on 1/22/14.
//  Copyright (c) 2014 Matheus Marchiore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tarefa : NSObject

@property (nonatomic, copy) NSString *NomeTarefa;
@property (nonatomic, copy) NSString *DescTarefa;


-(Tarefa *) initWithNome:(NSString *)nome descricao:(NSString *)desc;


@end
