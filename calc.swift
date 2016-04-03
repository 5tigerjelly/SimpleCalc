//
//  main.swift
//  SimpleCalc
//
//  Created by Bum Mook Oh on 2016. 3. 31..
//  Copyright © 2016년 Bum Mook Oh. All rights reserved.
//

import Foundation

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}


func convert(incoming:String) -> Int {
    return NSNumberFormatter().numberFromString(incoming)!.integerValue
}


print("Enter an expression separated by returns:")

var input1 = input()
var numList = input1.componentsSeparatedByString(" ")
if numList.count > 1{
    var hardop = numList[numList.count-1]
    switch hardop{
        case "count":
            print(numList.count-1)
        case "avg":
            var total = 0
            for i in 0 ..< numList.count-1 {
                total += convert(numList[i])
            }
            print(total/(numList.count-1))
        case "fact":
            var total = 1
            var number = convert(numList[0])
            for i in 1 ... number {
                total *= i
            }
            print(total)
        default:
            print("wrong")
    }
}else{
    var operation = input()
    var input2 = input()
    var num2 = convert(input2)
    var num1:Int = convert(input1)

    switch operation{
        case "+": print("Result: \(num1+num2)")
        case "-": print("Result: \(num1-num2)")
        case "*": print("Result: \(num1*num2)")
        case "/": print("Result: \(num1/num2)")
        case "%": print("Result: \(num1%num2)")
        default: print("wrong operation input")
    }
}


