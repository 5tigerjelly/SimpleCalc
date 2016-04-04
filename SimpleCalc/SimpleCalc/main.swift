//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/3/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

let input1 = readLine(stripNewline: true)!
var numList = input1.componentsSeparatedByString(" ")
if numList.count > 1{
    var hardop = numList[numList.count-1]
    switch hardop{
    case "count":
        print(numList.count-1)
    case "avg":
        var total = 0
        for i in 0 ..< numList.count-1 {
            total += Int.init(numList[i])!
        }
        print(total/(numList.count-1))
    case "fact":
        var total = 1
        var number = Int.init(numList[0])!
        for i in 1 ... number {
            total *= i
        }
        print(total)
    default:
        print("wrong")
    }
}else{
    let operation = readLine(stripNewline: true)!
    let num2 = Int.init(readLine(stripNewline: true)!)!
    let num1 = Int.init(input1)!
    
    switch operation{
    case "+": print("Result: \(num1+num2)")
    case "-": print("Result: \(num1-num2)")
    case "*": print("Result: \(num1*num2)")
    case "/": print("Result: \(num1/num2)")
    case "%": print("Result: \(num1%num2)")
    default: print("wrong operation input")
    }
}




