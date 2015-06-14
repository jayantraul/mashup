//
//  list.swift
//  mashup
//
//  Created by Jayant Raul Rao on 14.06.15.
//  Copyright (c) 2015 Jayant Raul Rao. All rights reserved.
//

import Foundation

//generic node class
class Node<T:Equatable>
{
    init()
    {
        
    }
    var value:T? = nil
    var next:Node? = nil
}
//linked list class

class LinkedList<T:Equatable>
{
    var head = Node<T>()
    
    func insert(value: T)
    {
        //check if list is empty
        if self.head.value == nil
        {
            self.head.value = value
        }
        
        else
        {
            //find node without a next value
            var lastNode = self.head
            
            while lastNode.next != nil
            {
                lastNode = lastNode.next!
            }
            //create new node
            
            let newNode = Node<T>()
            newNode.value = value
            lastNode.next = newNode;
        }
    
    }
    
    func delete(value: T)
    {
        if self.head.value == value
        {
            self.head = self.head.next!
        }
        if self.head.value != nil
        {
            var node = self.head
            var previousNode = 
        }
    }
}


