//: Playground - noun: a place where people can play

import UIKit

//Binary Search Tree

//A binary search tree is comprised of a key and two indicators. The key represents the data you would like to store, such as a string or scalar value. Typically represented with pointers, the in- dicators store the location (also called the address) of its two children. The left child contains a value that is smaller than its parent. Conversely, the right child contains a value greater than its parent.

//Here’s an example of a BST written in Swift. Using generics, the structure also stores any type of object and supports nil values. The concept of combining keys and pointers to create hier- archies not only applies to binary search trees, but to other structures like tries and binary trees.

/* an AVL tree is another name for a balanced binary search tree*/

public class AVLTree <T: Comparable> {
    
    var key: T?
    var left: AVLTree?
    var right: AVLTree?


//add item based on its value

func addNode(key: T) {
    
    //check for the head Node
    if (self.key == nil) {
        self.key = key
        return
    }
    
    //check the left side
    if (key < self.key) {
        if (self.left != nil) {
            left?.addNode(key)
        }
        else {
            
            //create a new left node
            let leftChild: AVLTree = AVLTree()
            leftChild.key = key
            self.left = leftChild
        }
    } //end if
    
    //check the right side
    if (key > self.key) {
        if (self.right != nil) {
            right?.addNode(key)
        }
        else {
            
            //create a new right node
            let rightChild : AVLTree = AVLTree()
            rightChild.key = key
            self.right = rightChild
        }
    } //end if
} //end function
    
}

//a simple array of unsorted integers

let numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7]

//create a new BST instance
var root = AVLTree<Int>()

//sort each item in the list
for number in numberList {
    root.addNode(number)
}




// O(log(n))