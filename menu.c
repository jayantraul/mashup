//
//  menu.c
//  mashup
//
//  Created by Raul Rao on 13.06.15.
//  Copyright (c) 2015 Jayant Raul Rao. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <limits.h>
#import "menu.h"

typedef struct node
{
    int n;
    struct node * next;
    
}node;

node * first = NULL;


void quit()
{
    node * ptr = first;
    
    while (ptr != NULL)
    {
        node * pred = ptr;
        ptr = ptr->next;
        free(pred);
    }
    
    printf("Program quitted... \n");
}