//
//  main.swift
//  mashup
//
//  Created by Jayant Raul Rao on 13.06.15.
//  Copyright (c) 2015 Jayant Raul Rao. All rights reserved.
//

import Foundation

var choice:CInt

do
{
    choice = display()
    
}while(choice < 1 || choice > 4)
/*
switch(choice)
{
//case 1: Calculate()

//case 2: cs()
//case 3: dictionary()

case 4: quit()

default: println("Internal error! \n"); break
    
}
*/

var s:Int? = readInt()
println(s)
