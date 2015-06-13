//
//  helper.c
//  mashup
//
//  Created by Jayant Raul Rao on 13.06.15.
//  Copyright (c) 2015 Jayant Raul Rao. All rights reserved.
//

#include <stdio.h>
#include "helper.h"
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>


int c;

int display()
{
    do
    {
        printf("Please select one of the following Options: \n");
        printf("1.Calculate \n");
        printf("2.Computer Science \n");
        printf("3.Dictionary \n");
        printf("4.Quit \n \n");
        
        printf("Selection : ");
        
        c = GetInt();
        
        
    }while(c < 1 && c > 5);
    
    return c;
}

int GetInt()
{
    while (true)
    {
        string line = GetString();
        
        if (line == NULL)
        {
            return INT_MAX;
        }
        
        int num;
        char c;
        
        if(sscanf(line, "%i %c", &num, &c) == 1)
        {
            free(line);
            return num;
        }
        
        else
        {
            free(line);
            printf("Retry: ");
        }
        
    }
}

string GetString()
{
    //create  a growable buffer for chars
    string buffer = NULL;
    
    //capacity for buffer
    unsigned int capacity = 0;
    
    //number of Chars in the buffer
    unsigned int num = 0;
    
    int c; //can be EOF or current character
    
    while ((c = fgetc(stdin)) != '\n' && c != EOF)
    {
        if (num + 1 > capacity)
        {
            if (capacity == 0)
            {
                capacity = 32;
            }
            
            else if (capacity <= (UINT_MAX / 2))
            {
                capacity *= 2;
            }
            
            else
            {
                free(buffer);
            }
            
            string temp = realloc(buffer, capacity * sizeof(char));
            
            if (temp == NULL)
            {
                free(buffer);
                return NULL;
            }
            
            buffer = temp;
            
        }
        
        buffer[num++] = c;
    }
    
    if (num == 0 && c == EOF)
    {
        return NULL;
    }
    
    string minimal = malloc((num + 1) * sizeof(char));
    
    strncpy(minimal, buffer, num);
    
    free(buffer);
    
    minimal[num] = '\0';
    
    return minimal;
    
}