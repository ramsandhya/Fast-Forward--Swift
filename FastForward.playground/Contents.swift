//: Playground - noun: a place where people can play

import UIKit

// String

// String is a class with its properties and methods.
var str = "Hello, playground"

var firstName = "Eddie"
var lastName = "Bauer"
var fullName = "\(firstName) \(lastName)"
fullName.append (" III")

var bookTitle = "revenge of the crab cakes"
// capitalized is a property of the string. So, it doesn't have "()"
bookTitle = bookTitle.capitalized
var chatroomAnnoyingCapsGuy = "HEY THERE HYA DOING?"
// Lowercased is a string method. So, it has "()"
var lowercasedChat = chatroomAnnoyingCapsGuy.lowercased()

var sentence = "What the fetch?! Heck that is crazy"
if sentence.contains("fetch") || sentence.contains("Heck") {
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}

// Numbers

var age = 30
var weight = 200
var someNum: Double = 1214687564457608745
var milesRan = 56.6
var pi = 3.14
milesRan = pi

// This returns the quotient.
var division = 13/5
// This returns the remainder 
var modulous = 13 % 5

// Functions

var length = 5
var width = 10
var area = length * width
var currentBankBalance = 500.00
var shoes = 350.00
//func purchaseItem(bankBalance: Double  , itemPrice: Double) -> Double {
//    if itemPrice <= bankBalance {
//        currentBankBalance = bankBalance - itemPrice
//    }
//    return currentBankBalance
//}
//
//purchaseItem(bankBalance: currentBankBalance, itemPrice: shoes)
//
//var table = 50.00
//purchaseItem(bankBalance: currentBankBalance, itemPrice: table)


// Inout is used to modify the parameter passed in the function (which is nothing but the variable)
func purchaseItem(bankBalance: inout Double  , itemPrice: Double) -> Double {
    if itemPrice <= bankBalance {
        bankBalance = bankBalance - itemPrice
    }
    return currentBankBalance
}

// If inout is used in the function then "&" is used when the function is called
purchaseItem(bankBalance: &currentBankBalance, itemPrice: shoes)

var table = 50.00
purchaseItem(bankBalance: &currentBankBalance, itemPrice: table)

// Boolean

//Comparision operators - ==, !=, >=, <=
var amITheBestTeacherEver = true
amITheBestTeacherEver = false
// true == false evaluates to be false and true == true evaluates to be true. The print statement will execute if any one of them evaluates to be true
if true == false || true == true {
    print( "WTFish")
}

//var hasFinishedDownloading: Bool = false
//can be written as :
// Returns false
var hasFinishedDownloading: Bool = 1 == 2
if !hasFinishedDownloading {
    print("Need more time")
}

// returns true
hasFinishedDownloading = true

// 1 == 2 returns boool
if 1 == 2 {
    print("should not see this.")
}
else {
    print("The comparision operator evaluates to be false")
}

// Logical operators

let allowedEntry = false

if !allowedEntry {
    print("Not Allowed")
}
let enteredCode = true
let passedRetinaScan = false
let iAmTomCruise = false
if enteredCode && passedRetinaScan || iAmTomCruise {
    print("Welcome")
}
else {
    print("Access Denied")
}

// Arrays

var employee1Slary = 45000.00
var employee2Salary = 54000.00
var employee3Salary = 100000.00
var emloyee4Salary = 20000.00

// Array can take any type of data unless it is explicitly typed.
var employeeSalaries = [45000.00, 54000.00, 100000.00, 20000.00]

// An array of type String is only declared but not intitialized.
var students : [String]
// students.count will not work and the program will crash.

// this is creating an empty array of type string. It must be intialized so that we can work on it later.
var studentsList = [String]()
studentsList.count

// Command click on append gives a lot of documentation to read about the different aspects of array
studentsList.append("John")

// Loops

// Repeat loop:
//  To calculate the 10% commission of every salary- we need to loop through evevry salary.
// to avoid the program to crash, the index which increments should eventually meet a condition to stop the program. If we comment out the i++ line then program goes to an infinite loop.
var i = 0
repeat {
    employeeSalaries[i] = employeeSalaries[i] + employeeSalaries[i] * 0.1
    i += 1
} while (i < employeeSalaries.count)

// for in loop:
for i in 0..<employeeSalaries.count {
    employeeSalaries[i] = employeeSalaries[i] + employeeSalaries[i] * 0.1
}

// 1 an d 5 both are inclusive.
for x in 1...5 {
    print(x)
}

// for each loop
// Here the during every iteration the each salary from the employeeSalaries array is being assigned to the salary variable. This loop method is less extraneous.
for salary in employeeSalaries {
    print ("Salary : \(salary)")
}

// Dictionaries

// Dictionary initialization
var namesOfIntegers = [Int: String] ()

// 3 is the key not index
namesOfIntegers[3] = "three"

// To empty the dictionary
namesOfIntegers = [:]

// Initialized a dictionary with reference name airports
var airports = [String : String]()

// Adding key value pairs to the dic.
airports["LAX"] = "Los Angeles"
airports["LHR"] = "London Heathrow"
airports["NEW"] = "Newark"
airports.count
print("\(airports)")
// remove an item
airports["NEW"] = nil

// The key and val variable is created and are passed inthe print statement. This is how we write the for in loop to extract something out of some collection which is the dictionary.
for key in airports.keys {
    print("key is \(key)")
}

for val in airports.values {
    print("value is \(val)")
}

/*
Swift changed "where" in "if let" statement and replaced it with ","
if let v = vehicle , let m = v.model {
    print("m")
}
*/

// Optionals

var lotteryWinnings: Int?

//print(lotteryWinnings!) - This is a bad practice to explicitly unwrap the optional- MP- It crashes the program.

// Recommended syntax
// If lotteryWinnings had no value then as per the optional declaration, It would not print anything. Check- uncomment next line

lotteryWinnings = 100
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

// One more - most preferred
// A new constant is created named winnings and is assigned the value of lotteryWinnings "if there is a value" and then print the constant .
if let winnings = lotteryWinnings {
    print(winnings)
}

// The Car class can be used to instantiate a car object.
// The instance's property model can have a value- something or nil.
class Car {
    var model: String?
}

// The vehicle instance is declared with a type of optional String meaning this vehicle instance can have a nil value or something.
//The vehicle is declared as a type of the Car class.
var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

/* vehicle variable is assgned a value of instance of Car. It is assigned a space in the memory.
 That vehicle's model property is now assigned a value called "Bronco", so its not nil now, which has a separate space inthe memory.
 So, constant v is created. if let statement is doing a null check on vehicle and its model.
 Now, if both of them has a value then print m. If either of the value does not exist then the print statement is not executed.
*/
vehicle = Car()
vehicle?.model = "Bronco"
if let v = vehicle, let m = v.model {
    print(m)
}

//Using if let to extract the values in case of optionals is recommended.
var cars : [Car]?
cars = [Car]()
if let carArr = cars , carArr.count > 0 {
   print(carArr.count)
}

/*
 Takeaways:
 If you don't know and can't guarantee that there will be a value or not use a ? mark, make it optional.
 If you absolutely guarantee that your variable's gonna have a value in it (may be we are not giving it the user or the user will give it at later point of time) then and you are guaranteeing that you'll have a valure in the later point of time then use ! mark.
 If you use the ! then it better to use some safety code by using computed properties.
 
 */

class Person {
//_age is getting declared along with being expilicitly unwrapped
    var _age: Int!
// Ti make sure it has a valure later we initialize age with a computed property and return _age with a value.
    var age: Int {
        if _age == nil {
            _age = 15
        }
        return _age
    }
}

/*
 In the class Dog we learnt that we don't need to have !(impliciciltly unwrappped optional) or ?(optional) if you intialize it in the ocnstructor because when a Dog object is created at runtimr then it will have a vlue in  it.
IF YOU CARE THAT IF THERE IS A VALUE OR NOT THEN "DO THIS WITH SOME VALUE " THEN USE !
 IF YOU DON'T, MEANING IF THERE IS NO VALUE, DO NOTHING THEN USE ?
 */
var Jack = Person()
Jack._age
Jack.age

class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}
var lab = Dog(someSpecies: "Black Lab")
/*
 Tips:
 Toggle navigation bar - Cmd 0 
 Access each item in the Navigation bar = Cmd 1, 2, 3,4 till 8
 Toggle Utility BAr = Cmd Opt 0
 Access each item in the Utility bar - CMd Opt 1,2 3 till 6
 Toggle Debug area = Cmd Sft Y  
 Show the Asst editor -  Cmd Opt Enter
 To hide it - Cmd Enter
 To open a file quickly - Cmd Sft O
 To open another file int he Asst editor then Cmd Sft O and hold the option key
 To go back to the single editor mode = Cmd enter
 
 Storyboard tips:
 Select the element in the scene and select Option key and it will show the distance from the nearest element. Keep hovering to the other elements and it will still show the the result of the other elements too.
 
 

// Swift 3.0.1-------
// Topics covered in Swift but not in C or Objective-C as new concepts are:
 1. String interpolation
 2. Tuples
 3. Optionals
 4. Type inference
 5. Range operators
 

*/

// THE BASICS

let maximumNumberOfAttempts = 10
var currentLoginAttempt = 0
var x = 0.0, y = 0.9, z = 0.7
var welcomeMessage: String
    welcomeMessage = "Hello"
print("The current message of welcoming someone is \(welcomeMessage)")

// Type ALiases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
var turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Turnips are delcious")
} else {
    print("Turnips are horrible")
}
//Tuples
let httpErrorCode = (404, "Page not found")
let (statusCode, statusMessage) = httpErrorCode
print(statusCode, statusMessage)

//To avoid any of the portion of a tuple use underscore
let (_, justTheStatus) = httpErrorCode
print(justTheStatus)

// Tuples use the index which starts from 0 just like arrays.
print(httpErrorCode.0)

// We can name them 
var person = (name: "Samy", age: 39)
print("The person's name is \(person.name)")

// Optionals
var serverResponseCode: Int? = 404
serverResponseCode = nil
var surveyAnswer : String?
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// Forced unwrapping
if convertedNumber != nil {
    print("Yay! It has a value of \(convertedNumber!)")
}

// Optional binding 
if let actualNumber = Int(possibleNumber) {
    print(actualNumber)
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4"){
    if let secondNumber = Int("42"){
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Implicitly unwrapped optionals
let possibleString : String? = "Hello"
let forcedString: String = possibleString!
let assumedString: String! = "Hello again"
let implicitString: String = assumedString
if assumedString != nil {
    print("Y")
}
// Error handling

func canThrowAnError() throws {
}
do{
    try canThrowAnError()
} catch {
    
}


class VC {
    var num: Int!
    
    func myLog() {
        let x:Int = num
        print(x)
    }
    
}

let vc = VC()
vc.num = 2
vc.myLog()

//Error HAndling
func prepareSandwich() throws{
    
}
func eatSandwich(){

}
func cleanDishes() {}
struct Ingredients {}

class SandwichErrors {
    class forDirtyDishes: Error {
        
    }
    static var forMissingIngredients: Error!
    }

do {
    try prepareSandwich()
    eatSandwich()
} catch {
    cleanDishes()
}
// Assertions
let theAge = -3
//assert(theAge >= 0, "Age has to be more than 0.")
// theAge >=0 is like a watchdog, if that is true then the codes will keep executing successfully, in this example, theAge was -3 and the assert condition evaluated false and consoled the message.

// OPERATORS
// Assignment Operators

var (xo, yo) = (1, 2)
if xo == yo {
    print("y")
}else {
    print("n")
}
// Ternary conditional operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)





























