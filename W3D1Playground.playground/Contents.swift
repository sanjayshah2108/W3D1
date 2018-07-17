//: Playground - noun: a place where people can play

import Cocoa

//creating arrays

var array1 = [3, 10, 1, 105]

array1.append(400)
//appending adds the element to the end of the array

array1.insert(401, at: 0)
//insert at position 0

array1[0] = 401
//replaces 3 with 401

print(array1)

let pos = array1.index(of: 1)
//returns position 2

let first = array1[0]
//returns 401

let second = array1[1]
//returns 10

//remember, first element is always position 0!

let count1 = array1.count



//iteration

for element in array1 {
    
    print(element)

    print(array1.index(of: element))
    //this print sthe position number of the element
    
}

//: ## Optionality

var notAnOPtionalVariable: Int
var optionalVariable: Int?


optionalVariable = array1.index(of: 1000)
//optionalVariable will be nil (meaning empty)

//notAnOPtionalVariable = array1.index(of: 1000)
//this would crash the app, because nil is being assigned to a non-optional variable.

optionalVariable = array1.index(of: 1)
//Notice when we print `optionalVariable`, it prints out Optional("3")
print("index is \(optionalVariable)")


//Optionals need to be unwrapped to be used
//Optionals are unwrapped in a few ways

//: * Force unwrapping 🚫 - Use an exclamation point. This should be avoided. Unless you have a good reason to do it.
print("index is \(optionalVariable!)")

//: * Conditional unwrapping 👍

// IF LET Keywords
if let num = optionalVariable {
    print("The index is \(num)")
}

//this is saying, if optionalVariable is a proper number i.e. not nil,and so can be assigned to num, then print.


//Force-unwrapping should be avoided!! Unless you have a good reason to do it.

