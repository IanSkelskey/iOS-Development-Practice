import UIKit

/*
    If a variable has an initial value,
    its type is inferred by the compiler
 */
var str = "Hello, playground"
str = "Hello, Swift"

//  The let keyword denotes a constant
let constStr = str

//  Types can also be speified
var nextYear: Int = 0
var bodyTemp: Float = 0
var hasPet: Bool = true

//  Syntax for array declaration
var arrayOfInts: Array<Int> = []
//  Array short-hand
var arrayOfStrings: [String] = []

//  Syntax for dictionaries
var dictionaryOfCapitalsByCountry: Dictionary<String,String> = [:]
//  Dictionary short-hand
var dictionaryOfCapitalsByState: [String:String] = [:]

//  Syntax for sets
var winningLotteryNumbers: Set<Int> = []

//  Numbers assigned literal values
let number = 42
let fmStation = 91.2

//  Arrays and dictionaries with literals
let countingUp = ["one", "two"]
let nameByParkingSpace = [13: "Alice", 27: "Bob"]

//  Subscripting short-hand for accessing arrays
let secondElement = countingUp[1]
