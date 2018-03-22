

//
//  MyStack.swift
//
//  This class is a 'blueprint' for a stack
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//			swiftc MyStack.swift



//------------------------------------------------

class MyStack {
	//This class defines the stack
	
	//create private list
	private var list: [Int] = []

	//-----------------------
	public func str() -> String {
		//returns list as a string
		return "\(list)"
	}

	//-----------------------	
	public func at(index: Int) -> Int{
		//returns the item at input index
		return list[index]
	}

	//-----------------------
	public func push(integer: Int) {
		//append an object to the end of the stack
		list.append(integer)
	}
}


//--------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------



//
//  Main.swift
//
//   This program uses the stack 'MyStack'
//
//
//  Created by Heejo Suh in Mar 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//			swiftc Main.swift



//------------------------------------------------


//import Foundation


var inputNumber : Int?

//get integer input
while true {
	print("Try a number: ")
	
	let input: String? = readLine(strippingNewline: true)
	
	if Int(input!) != nil {
		inputNumber = Int(input!)
		break;
	} else {
		print("Insert an integer!")
	}
}
		
//---------------------
//instantiate stack		
var stackObject = MyStack()

//push to list		
stackObject.push(integer: inputNumber!)
print("Pushed \(stackObject.at(index: 0))")
print("List: \(stackObject.str())")
