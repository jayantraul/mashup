//
//  lib.swift
//  mashup
//
//  Created by Jayant Raul Rao on 13.06.15.
//  Copyright (c) 2015 Jayant Raul Rao. All rights reserved.
//

import Foundation

func readln()->String
{
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var input = keyboard.availableData
    
    return (NSString(data: input, encoding:NSUTF8StringEncoding))! as String
}

//sadly readInt does not seem possible in Swift 1.2, so you have to use the CInt approach via GetInt()

func readChar()->Character
{
    var line:String? = readln()
    var character = Array(line!)
    
    var c:Character? = character[0]
    
    if c == nil
    {
        println("You input nothing")
        return c!
    }
    
    else
    {
        return c!
    }
}

func readDouble()->Double
{
    var line:String? = readln()
    var double:Double? = (line as NSString?)!.doubleValue

    
    return double!
}

func readFloat()->Float
{
    var line:String? = readln()
    var float:Float? = (line as NSString?)!.floatValue

    
    return float!
}

func readBool()->Bool?
{
    var line:String? = readln()
    
    if line == "true"
    {
        return true
    }
    
    else if line == "false"
    {
        return false
    }
    
    else if line!.toInt() == 1
    {
        return true
    }
    
    else if line!.toInt() == 0
    {
       return false
    }
    
    else
    {
        return nil
    }
    
}

