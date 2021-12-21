/*
 This playground was built while studying:
 iOS Programming The Big Nerd Ranch Guide (7th edition)
 
 Concepts from chapter 2 are encompassed by this document.
    - types, literals, properties, methods, instantiation,
        optionals, loops, string interpolation, enumerations,
        switch statements, and closures.
 */

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
var countingUp = ["one", "two"]
let nameByParkingSpace = [13: "Alice", 27: "Bob"]

//  Subscripting short-hand for accessing arrays
let secondElement = countingUp[1]

//  Instantiation by initializers
let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

//  Some types have default values
let defaultNumber = Int()
let defaultBool = Bool()

//  String has an initializer that
//  accepts an Int
let meaningOfLife = String(number)

//  To create a set, you can use the
//  Set initializer that accepts an array literal
let availableRooms = Set([205, 411, 412])

//  Initializers for Float
let deafaultFloat = Float()
let floatFromLiteral = Float(3.14)

//  If you use type inference for a floating-point
//  literal, the type defaults to Double
let easyPi = 3.14

//  Property Examples
countingUp.count
emptyString.isEmpty

//  Instance Methods
countingUp.append("three")

//  Optionals
var anOptionalFloat: Float?
var anOptionalArrayOfStrings: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?
