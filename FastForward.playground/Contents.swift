////: Playground - noun: a place where people can play
//
import UIKit
//
//// String
//
//// String is a class with its properties and methods.
//var str = "Hello, playground"
//
//var firstName = "Eddie"
//var lastName = "Bauer"
//var fullName = "\(firstName) \(lastName)"
//fullName.append (" III")
//
//var bookTitle = "revenge of the crab cakes"
//// capitalized is a property of the string. So, it doesn't have "()"
//bookTitle = bookTitle.capitalized
//var chatroomAnnoyingCapsGuy = "HEY THERE HYA DOING?"
//// Lowercased is a string method. So, it has "()"
//var lowercasedChat = chatroomAnnoyingCapsGuy.lowercased()
//
//var sentence = "What the fetch?! Heck that is crazy"
//if sentence.contains("fetch") || sentence.contains("Heck") {
//    sentence.replacingOccurrences(of: "fetch", with: "tuna")
//    sentence.replacingOccurrences(of: "Heck", with: "Playa")
//}
//
//// Numbers
//
//var age = 30
//var weight = 200
//var someNum: Double = 1214687564457608745
//var milesRan = 56.6
//var pi = 3.14
//milesRan = pi
//
//// This returns the quotient.
//var division = 13/5
//// This returns the remainder 
//var modulous = 13 % 5
//
//// Functions
//
//var length = 5
//var width = 10
//var area = length * width
//var currentBankBalance = 500.00
//var shoes = 350.00
////func purchaseItem(bankBalance: Double  , itemPrice: Double) -> Double {
////    if itemPrice <= bankBalance {
////        currentBankBalance = bankBalance - itemPrice
////    }
////    return currentBankBalance
////}
////
////purchaseItem(bankBalance: currentBankBalance, itemPrice: shoes)
////
////var table = 50.00
////purchaseItem(bankBalance: currentBankBalance, itemPrice: table)
//
//
//// Inout is used to modify the parameter passed in the function (which is nothing but the variable)
//func purchaseItem(bankBalance: inout Double  , itemPrice: Double) -> Double {
//    if itemPrice <= bankBalance {
//        bankBalance = bankBalance - itemPrice
//    }
//    return currentBankBalance
//}
//
//// If inout is used in the function then "&" is used when the function is called
//purchaseItem(bankBalance: &currentBankBalance, itemPrice: shoes)
//
//var table = 50.00
//purchaseItem(bankBalance: &currentBankBalance, itemPrice: table)
//
//// Boolean
//
////Comparision operators - ==, !=, >=, <=
//var amITheBestTeacherEver = true
//amITheBestTeacherEver = false
//// true == false evaluates to be false and true == true evaluates to be true. The print statement will execute if any one of them evaluates to be true
//if true == false || true == true {
//    print( "WTFish")
//}
//
////var hasFinishedDownloading: Bool = false
////can be written as :
//// Returns false
//var hasFinishedDownloading: Bool = 1 == 2
//if !hasFinishedDownloading {
//    print("Need more time")
//}
//
//// returns true
//hasFinishedDownloading = true
//
//// 1 == 2 returns boool
//if 1 == 2 {
//    print("should not see this.")
//}
//else {
//    print("The comparision operator evaluates to be false")
//}
//
//// Logical operators
//
//let allowedEntry = false
//
//if !allowedEntry {
//    print("Not Allowed")
//}
//let enteredCode = true
//let passedRetinaScan = false
//let iAmTomCruise = false
//if enteredCode && passedRetinaScan || iAmTomCruise {
//    print("Welcome")
//}
//else {
//    print("Access Denied")
//}
//
//// Arrays
//
//var employee1Slary = 45000.00
//var employee2Salary = 54000.00
//var employee3Salary = 100000.00
//var emloyee4Salary = 20000.00
//
//// Array can take any type of data unless it is explicitly typed.
//var employeeSalaries = [45000.00, 54000.00, 100000.00, 20000.00]
//
//// An array of type String is only declared but not intitialized.
//var students : [String]
//// students.count will not work and the program will crash.
//
//// this is creating an empty array of type string. It must be intialized so that we can work on it later.
//var studentsList = [String]()
//studentsList.count
//
//// Command click on append gives a lot of documentation to read about the different aspects of array
//studentsList.append("John")
//
//// Loops
//
//// Repeat loop:
////  To calculate the 10% commission of every salary- we need to loop through evevry salary.
//// to avoid the program to crash, the index which increments should eventually meet a condition to stop the program. If we comment out the i++ line then program goes to an infinite loop.
//var i = 0
//repeat {
//    employeeSalaries[i] = employeeSalaries[i] + employeeSalaries[i] * 0.1
//    i += 1
//} while (i < employeeSalaries.count)
//
//// for in loop:
//for i in 0..<employeeSalaries.count {
//    employeeSalaries[i] = employeeSalaries[i] + employeeSalaries[i] * 0.1
//}
//
//// 1 an d 5 both are inclusive.
//for x in 1...5 {
//    print(x)
//}
//
//// for each loop
//// Here the during every iteration the each salary from the employeeSalaries array is being assigned to the salary variable. This loop method is less extraneous.
//for salary in employeeSalaries {
//    print ("Salary : \(salary)")
//}
//
//// Dictionaries
//
//// Dictionary initialization
//var namesOfIntegers = [Int: String] ()
//
//// 3 is the key not index
//namesOfIntegers[3] = "three"
//
//// To empty the dictionary
//namesOfIntegers = [:]
//
//// Initialized a dictionary with reference name airports
//var airports = [String : String]()
//
//// Adding key value pairs to the dic.
//airports["LAX"] = "Los Angeles"
//airports["LHR"] = "London Heathrow"
//airports["NEW"] = "Newark"
//airports.count
//print("\(airports)")
//// remove an item
//airports["NEW"] = nil
//
//// The key and val variable is created and are passed inthe print statement. This is how we write the for in loop to extract something out of some collection which is the dictionary.
//for key in airports.keys {
//    print("key is \(key)")
//}
//
//for val in airports.values {
//    print("value is \(val)")
//}
//
///*
//Swift changed "where" in "if let" statement and replaced it with ","
//if let v = vehicle , let m = v.model {
//    print("m")
//}
//*/
//
//// Optionals
//
//var lotteryWinnings: Int?
//
////print(lotteryWinnings!) - This is a bad practice to explicitly unwrap the optional- MP- It crashes the program.
//
//// Recommended syntax
//// If lotteryWinnings had no value then as per the optional declaration, It would not print anything. Check- uncomment next line
//
//lotteryWinnings = 100
//if lotteryWinnings != nil {
//    print(lotteryWinnings!)
//}
//
//// One more - most preferred
//// A new constant is created named winnings and is assigned the value of lotteryWinnings "if there is a value" and then print the constant .
//if let winnings = lotteryWinnings {
//    print(winnings)
//}
//
//// The Car class can be used to instantiate a car object.
//// The instance's property model can have a value- something or nil.
//class Car {
//    var model: String?
//}
//
//// The vehicle instance is declared with a type of optional String meaning this vehicle instance can have a nil value or something.
////The vehicle is declared as a type of the Car class.
//var vehicle: Car?
//
////if let v = vehicle {
////    if let m = v.model {
////        print(m)
////    }
////}
//
///* vehicle variable is assgned a value of instance of Car. It is assigned a space in the memory.
// That vehicle's model property is now assigned a value called "Bronco", so its not nil now, which has a separate space inthe memory.
// So, constant v is created. if let statement is doing a null check on vehicle and its model.
// Now, if both of them has a value then print m. If either of the value does not exist then the print statement is not executed.
//*/
//vehicle = Car()
//vehicle?.model = "Bronco"
//if let v = vehicle, let m = v.model {
//    print(m)
//}
//
////Using if let to extract the values in case of optionals is recommended.
//var cars : [Car]?
//cars = [Car]()
//if let carArr = cars , carArr.count > 0 {
//   print(carArr.count)
//}
//
///*
// Takeaways:
// If you don't know and can't guarantee that there will be a value or not use a ? mark, make it optional.
// If you absolutely guarantee that your variable's gonna have a value in it (may be we are not giving it the user or the user will give it at later point of time) then and you are guaranteeing that you'll have a valure in the later point of time then use ! mark.
// If you use the ! then it better to use some safety code by using computed properties.
// 
// */
//
//class Person {
////_age is getting declared along with being expilicitly unwrapped
//    var _age: Int!
//// Ti make sure it has a valure later we initialize age with a computed property and return _age with a value.
//    var age: Int {
//        if _age == nil {
//            _age = 15
//        }
//        return _age
//    }
//}
//
///*
// In the class Dog we learnt that we don't need to have !(impliciciltly unwrappped optional) or ?(optional) if you intialize it in the ocnstructor because when a Dog object is created at runtimr then it will have a vlue in  it.
//IF YOU CARE THAT IF THERE IS A VALUE OR NOT THEN "DO THIS WITH SOME VALUE " THEN USE !
// IF YOU DON'T, MEANING IF THERE IS NO VALUE, DO NOTHING THEN USE ?
// */
//var Jack = Person()
//Jack._age
//Jack.age
//
//class Dog {
//    var species: String
//    
//    init(someSpecies: String) {
//        self.species = someSpecies
//    }
//}
//var lab = Dog(someSpecies: "Black Lab")
///*
// Tips:
// Toggle navigation bar - Cmd 0 
// Access each item in the Navigation bar = Cmd 1, 2, 3,4 till 8
// Toggle Utility BAr = Cmd Opt 0
// Access each item in the Utility bar - CMd Opt 1,2 3 till 6
// Toggle Debug area = Cmd Sft Y  
// Show the Asst editor -  Cmd Opt Enter
// To hide it - Cmd Enter
// To open a file quickly - Cmd Sft O
// To open another file int he Asst editor then Cmd Sft O and hold the option key
// To go back to the single editor mode = Cmd enter
// 
// Storyboard tips:
// Select the element in the scene and select Option key and it will show the distance from the nearest element. Keep hovering to the other elements and it will still show the the result of the other elements too.
// 
// 
//
//// Swift 3.0.1-------
//// Topics covered in Swift but not in C or Objective-C as new concepts are:
// 1. String interpolation
// 2. Tuples
// 3. Optionals
// 4. Type inference
// 5. Range operators
// 
//
//*/
//
//// THE BASICS
//
//let maximumNumberOfAttempts = 10
//var currentLoginAttempt = 0
//var x = 0.0, y = 0.9, z = 0.7
//var welcomeMessage: String
//    welcomeMessage = "Hello"
//print("The current message of welcoming someone is \(welcomeMessage)")
//
//// Type ALiases
//typealias AudioSample = UInt16
//var maxAmplitudeFound = AudioSample.min
//var turnipsAreDelicious = false
//if turnipsAreDelicious {
//    print("Turnips are delcious")
//} else {
//    print("Turnips are horrible")
//}
////Tuples
//let httpErrorCode = (404, "Page not found")
//let (statusCode, statusMessage) = httpErrorCode
//print(statusCode, statusMessage)
//
////To avoid any of the portion of a tuple use underscore
//let (_, justTheStatus) = httpErrorCode
//print(justTheStatus)
//
//// Tuples use the index which starts from 0 just like arrays.
//print(httpErrorCode.0)
//
//// We can name them 
//var person = (name: "Samy", age: 39)
//print("The person's name is \(person.name)")
//
//// Optionals
//var serverResponseCode: Int? = 404
//serverResponseCode = nil
//var surveyAnswer : String?
//let possibleNumber = "123"
//let convertedNumber = Int(possibleNumber)
//
//// Forced unwrapping
//if convertedNumber != nil {
//    print("Yay! It has a value of \(convertedNumber!)")
//}
//
//// Optional binding 
//if let actualNumber = Int(possibleNumber) {
//    print(actualNumber)
//}
//
//if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
//    print("\(firstNumber) < \(secondNumber) < 100")
//}
//
//if let firstNumber = Int("4"){
//    if let secondNumber = Int("42"){
//        if firstNumber < secondNumber && secondNumber < 100 {
//            print("\(firstNumber) < \(secondNumber) < 100")
//        }
//    }
//}
//// Implicitly unwrapped optionals
//let possibleString : String? = "Hello"
//let forcedString: String = possibleString!
//let assumedString: String! = "Hello again"
//let implicitString: String = assumedString
//if assumedString != nil {
//    print("Y")
//}
//// Error handling
//
//func canThrowAnError() throws {
//}
//do{
//    try canThrowAnError()
//} catch {
//    
//}
//
//
//class VC {
//    var num: Int!
//    
//    func myLog() {
//        let x:Int = num
//        print(x)
//    }
//    
//}
//
//let vc = VC()
//vc.num = 2
//vc.myLog()
//
////Error HAndling
//func prepareSandwich() throws{
//    
//}
//func eatSandwich(){
//
//}
//func cleanDishes() {}
//struct Ingredients {}
//
//class SandwichErrors {
//    class forDirtyDishes: Error {
//        
//    }
//    static var forMissingIngredients: Error!
//    }
//
//do {
//    try prepareSandwich()
//    eatSandwich()
//} catch {
//    cleanDishes()
//}
//// Assertions
//let theAge = -3
////assert(theAge >= 0, "Age has to be more than 0.")
//// theAge >=0 is like a watchdog, if that is true then the codes will keep executing successfully, in this example, theAge was -3 and the assert condition evaluated false and consoled the message.
//
//// OPERATORS
//// Assignment Operators
//
//var (xo, yo) = (1, 2)
//if xo == yo {
//    print("y")
//}else {
//    print("n")
//}
//// Ternary conditional operator
//let contentHeight = 40
//let hasHeader = true
//let rowHeight = contentHeight + (hasHeader ? 50 : 20)
//
//// Nil Coalescing operator
//var isBoy = false
//var defaultColor = "red"
//var gender: String? = isBoy ? "Bob" : "Ruby"
////var colorChoice = (gender ?? defaultColor ) ? "pink" : "blue"
//
//let defautColorName = "red"
//var userDefinedCOlorName: String?
//var colorNameToUse = userDefinedCOlorName ?? defaultColor
//
//let defaultColorName1 = "red"
//var userDefinedColorName1: String? = "pink"
//var colorNameToUse1 = userDefinedColorName1 ?? defaultColorName1
//
////STRINGS AND CHARACTERS
//
//// assign an empty string to a variable
//var emptyString = ""
//
//// instantiate a string instance with the initializer
//var anotherString = String()
//
//let someStings: [Character] = ["H", "t"]
//let message = String(someStings)
//
//var theMessage = "Hello"
//var exc: Character = "!"
//var theMessage1 = theMessage + String(exc)
//theMessage += String(exc)
//print(theMessage)
//var nextMessage = ""
//theMessage.append(exc)
//var chef = "chef"
//var chile = chef.characters.count
//
////Accessing characters in a string
//var greet = "chef!"
//greet.endIndex
//greet.startIndex
//greet.characters.count
//greet[greet.index(after: greet.startIndex)]
//greet[greet.index(greet.startIndex, offsetBy: 2)]
//greet.characters.indices
//
//for index in greet.characters.indices {
//    print("\(greet[index])", terminator: " ")
//}
//
////Inserting
//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//welcome.insert(contentsOf: " there".characters, at: welcome.index(before: welcome.endIndex))
//
////COLLECTION TYPES
//// Arrays
//var myArr = [Int]()
//var myArra = Array(repeatElement(2.2, count: 6))
//var myA = ["A", "B", "C"]
//
//var shoppingList = ["Chocolate Spread", "Cheese", "Butter"]
//for item in shoppingList {
//    print(item)
//}
//// enumerated lets you print the index and the value both.
//for (index, item) in shoppingList.enumerated() {
//    print("\(index). \(item) ")
//}
//
//// Sets
//var set = Set<Character>()
//var sett: Set<String> = ["Ak", "Bm", "Cn"]
//let oddDigits: Set = [1, 7, 31, 67]
//let evenDigits: Set = [6, 42, 86, 444]
//oddDigits.union(evenDigits).sorted()
//
//// Dictionaries
//var dicOfIntegers = [Int : String]()
//dicOfIntegers[16] = "sixteen"
//dicOfIntegers
//dicOfIntegers = [:]
//dicOfIntegers
//
////CONTROL FLOW
//
////switch
//var theage = 9
//switch theage {
//case 4...10 where theage is Int :
//    print("Small kid")
//case 10...14:
//    print("Big kid")
//default:
//    print("You are grown up.")
//}
//
////for in loop in dictionary
//let numLegs = ["Spider": 8, "Cow": 4, "Ant": 6]
//for (species, legs) in numLegs {
//    print("\(species)s have \(legs) legs.")
//}
//
//// while
//var ex = 0
//while ex < 5 {
//    //print(ex)
//    ex += 1
//}
//
//// chutes and ladders
////let finalSquare = 25
////var board = Array<Int>(repeating: 0, count: finalSquare + 1)
////board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
////board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
////
////board[03] // is equal to 8 (The diff between 11 and 3)
////
////var square = 0
////var diceRoll = 0
////while square < finalSquare {
////    // roll the dice
////    diceRoll += 1
////    print("\(diceRoll) - diceroll")
////    if diceRoll == 7 {
////        diceRoll = 1
////    }
////    // move by the rolled number
////    square += diceRoll
////    print("\(square) - at square after diceroll ")
////    if square < board.count {
////        square += board[square]
////        print("\(square) at square after ladder/chutes")
////    }
////}
////print("Game over!")
//
////Continue
//let puzzleInput = "Great minds think alike"
//var puzzleOutput = ""
//let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
//for character in puzzleInput.characters {
//    if charactersToRemove.contains(character){
//        continue
//    } else {
//        puzzleOutput.append(character)
//    }
//}
//
//// Fallthrough
////let integerToDescribe = 5
//let integerToDescribe = 23
//var description = "The number \(integerToDescribe) is"
//switch integerToDescribe {
//case 2, 3, 5, 7, 11, 13, 17, 19:
//    description += " a prime number, and also"
//    fallthrough
//default:
//    description += " an integer."
//}
//print(description)
//print("---------------")
//
//// Only Winning condition until you Land on 25
//
//let finalSquare = 25
//
//var board = Array<Int>(repeating: 0, count: finalSquare + 1)
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//
//board[03] // is equal to 8 (The diff between 11 and 3)
//
//var square = 0
//var diceRoll = 0
//
//gameLoop: while square < finalSquare {
//    print("square now is \(square)")
//    print("before diceroll square is \(square)")
//    diceRoll += 1
//    print("diceroll is \(diceRoll)")
//    if diceRoll == 7 { diceRoll = 1 }
//    switch square + diceRoll {
//    case finalSquare:
//        // diceRoll will move us to the final square, so the game is over
//        break gameLoop
//    case let newSquare where newSquare > finalSquare:
//        // diceRoll will move us beyond the final square, so roll again
//        continue gameLoop
//    default:
//        // this is a valid move, so find out its effect
//        square += diceRoll
//        square += board[square]
//    }
//}
//print("Game over!")
//print("---------------")
//
//// Guard statement
//func greet(person: [String: String]) {
//    guard let name = person["name"] else {
//        return
//    }
//    
//    print("Hello \(name)!")
//    
//    guard let location = person["location"] else {
//        print("I hope the weather is nice near you.")
//        return
//    }
//    
//    print("I hope the weather is nice in \(location).")
//}
//
////FUNCTIONS
//
//greet(person: ["name": "John"])
//// Prints "Hello John!"
//// Prints "I hope the weather is nice near you."
//greet(person: ["name": "Jane", "location": "Cupertino"])
//// Prints "Hello Jane!"
//// Prints "I hope the weather is nice in Cupertino."
//
//// when functions do not mean to a return value intentionally then use let _
//func printAndCount(string: String) -> Int {
//    print(string)
//    return string.characters.count
//}
//func printWithoutCounting(string: String) {
//    let _ = printAndCount(string: string)
//    
//}
//printAndCount(string: "hello, world")
//// prints "hello, world" and returns a value of 12
//printWithoutCounting(string: "hello, world")
//// prints "hello, world" but does not return a value
//
//print("-----------")
////Functions with tuples
//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax{
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//minMax(array: [3,67, 54, 32])
//let bounds = minMax(array: [3,67, 54, 32])
//print(bounds.min, bounds.max)

//Functions with tuples and handling the empty array
//func minMaxi(array: [Int]) -> (min: Int, max: Int)? {
//    if array.isEmpty { return nil}
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax{
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//minMaxi(array: [])
//if let bound = minMaxi(array: []) {
//    print(bound)
//    print(bound.min, bound.max)
//}

// Variadic parameters- parameters are passed as an array of the same type as mentioned during function is defined

//func arithmeticMean(_ numbers: Double...) -> Double {
//    var total: Double = 0
//    for number in numbers {
//        total += number
//    }
//    return total / Double(numbers.count)
//}
//arithmeticMean(54,2435,55,64,666,5)

// Inout parameters
//func swapTwoInts(_ a: inout Int, _ b: inout Int){
//    let tempA = a
//    a = b
//    b = tempA
//}
//var one = 2
//var another = 5
//swapTwoInts(&one, &another)
//print(one,another)

// FUnction types
//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
//    return a * b
//}
//var mathFunction: (Int, Int) -> Int = addTwoInts
//mathFunction(3, 5)

// Function types as return types

//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//
//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//
//func chooseFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepBackward : stepForward
//}
//var currentValue = 3
//var moveToZero = chooseFunction(backward: currentValue > 0)
//print("Counting to zero")
//
//while currentValue != 0 {
//    print(currentValue)
//    currentValue = moveToZero(currentValue)
//}
//print("Zero")

// GENERICS

//Generic version of swapTwoInts function to make it compatible to any type
//func swapTwoValues<T, G>(_ a: inout T,_ b: inout G )-> (T, G) {
//    let tempA = a
//    a = b
//    b = tempA
//    return(a,b)
//}
//// called for type Int
//var someInt: Double = 4.3
//var otherInt: Int = 59
//swapTwoValues(&someInt, &otherInt)
//
//// called for String type- works for both types
//var someString = "Hello"
//var otherString = "John"
//swapTwoValues(&someString, &otherString)

// Generics with two parameter types
//func swapTwoValues<T, G>(_ a: inout T,_ b: inout G )-> (T, G) {
//    return(a,b)
//}
//// called for type Int
//var someInt: Double = 4.3
//var otherInt: Int = 59
//swapTwoValues(&someInt, &otherInt)

// Stack- just like array or dictionary but with 2 main functions push and pop

//struct stackedStruct<Element> {
//    var items: [Element] = []   //property of the struct
//    mutating func push(item: Element) { // first function of the struct
//        items.append(item)
//    }
//    mutating func pop() -> Element { //second function of the struct
//        return items.removeLast()
//    }
//}
//
//// pushing an item to the stack
//var stackOfString = stackedStruct<String>()
//stackOfString.push(item: "uno")
//stackOfString.push(item: "dos")
//stackOfString.push(item: "tres")
//stackOfString.push(item: "cuatro")
//print(stackOfString)
//
//let popItem = stackOfString.pop()

// Type Constraints
// Non-Generic function
//func findIndex(ofString valueToFind: String, in array: [String]) -> Int?{
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}
//let strings = ["Chocolate Spread", "Cheese", "Butter"]
//if let foundIndex = findIndex(ofString: "Butter", in: strings) {
//    print(foundIndex)
//}

//// Generic function with Equatable
//func findIndex<T: Equatable>(of valueToFind:T , in array: [T]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}
//let DoubleIndex = findIndex(of: 3.4, in: [4.5, 66.2, 22.3])
//let stringIndex = findIndex(of: "Hello", in: ["Bon jour", "Namaste", "Hola", "Hello", "Konnichiwa"])

// Associated types
protocol Container {
    associatedtype ItemType
    mutating func append(_ item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

// Non-generic- we are creating a custom stack type which is a struct also struct named stackInt which comforms to the  Container protocol
//struct IntStack: Container {
//    // Original intStack implementation
//    var items = [Int]()
//    mutating func push(_ item: Int) {
//        items.append(item)
//    }
//    mutating func pop() -> Int  {
//        return items.removeLast()
//    }
//    // conformance to the Container protocol
//    typealias ItemType = Int
//    mutating func append(_ item: Int) {
//        self.push(item)
//    }
//    var count: Int {
//        return items.count
//    }
//    subscript(i: Int) -> Int {
//        return items[i]
//    }
//}

//Generic stack type conforming to protocol
// Element is the type parameter
struct Stack<Element>: Container {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    typealias ItemType = Element
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
    
}

// PROTOCOLS
// Mutating methods requirements in protocols

// We are defining protocol which has a mutating method, mutating keyword is written only for the structures/enums implementation and not for the class implementation. Till now the method has not been called yet by the instances of the value or reference types(structs/enums or class)
protocol Togglable {
    mutating func toggle()
}
// Defining emum
enum SwitchOnOff : Togglable {
    case on, off
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
// Creating an instance of th enum
var lightSwitch = SwitchOnOff.off
lightSwitch.toggle()
lightSwitch.toggle()

// Protocols can have initializers just like normal initializers
protocol SomeProtocol {
    init(someParameter: Int)
}

// Protocols used as a type

//Snakes and Ladders

Double(5.0).truncatingRemainder(dividingBy: 2.0)

var lastRandom = 5.0
let m = 7777777.0
let a = 3877.0
let c = 29573.0


lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
print(lastRandom)
print(lastRandom / m)

lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
print(lastRandom)
print(lastRandom / m)

lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
print(lastRandom)
print(lastRandom / m)

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.37464991998171"
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...5 {
    print("Random dice roll is \(d6.roll())")
}
// Random dice roll is 3
// Random dice roll is 5
// Random dice roll is 4
// Random dice roll is 5
// Random dice roll is 4

protocol DiceGame {
    var dice: Dice { get }
    func play()
}
protocol DiceGameDelegate {
    func gameDidStart(_ game: DiceGame)
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)
    func gameDidEnd(_ game: DiceGame)
}

class SnakesAndLadders: DiceGame {
    let finalSquare = 25
    let dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
    var square = 0
    var board: [Int]
    init() {
        board = Array(repeating: 0, count: finalSquare + 1)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
    }
    var delegate: DiceGameDelegate?
    func play() {
        square = 0
        delegate?.gameDidStart(self)
        gameLoop: while square != finalSquare {
            let diceRoll = dice.roll()
            delegate?.game(self, didStartNewTurnWithDiceRoll: diceRoll)
            switch square + diceRoll {
            case finalSquare:
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                continue gameLoop
            default:
                square += diceRoll
                square += board[square]
            }
        }
        delegate?.gameDidEnd(self)
    }
}

class DiceGameTracker: DiceGameDelegate {
    var numberOfTurns = 0
    func gameDidStart(_ game: DiceGame) {
        numberOfTurns = 0
        if game is SnakesAndLadders {
            print("Started a new game of Snakes and Ladders")
        }
        print("The game is using a \(game.dice.sides)-sided dice")
    }
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {
        numberOfTurns += 1
        print("Rolled a \(diceRoll)")
    }
    func gameDidEnd(_ game: DiceGame) {
        print("The game lasted for \(numberOfTurns) turns")
    }
}

let tracker = DiceGameTracker()
let game = SnakesAndLadders()
game.delegate = tracker
game.play() // took 4 turns
game.play() // took 6 turns
game.play() // took 12 turns

// Started a new game of Snakes and Ladders
// The game is using a 6-sided dice
// Rolled a 3
// Rolled a 5
// Rolled a 4
// Rolled a 5
// The game lasted for 4 turns









 /*
Takeways:
1. In Swift 2, the first parameter label didn't need to be mentioned when function is called. Although, we need to define define in the function definition.
 In swift 3, function definitio can have parameters like this- (_ first: Int, _ second: Int). We can call the function without the label name as - (3, 4)
 
2. Static dipatch
 Dynamic dispatch
 
3. Comparable
 Hashable
 Equatable
 
4. A function can have at most one variadic parameter
5. The parameters in a function is constant by default. It's value cannot be changed.
   If we need to change it then we need to define the parameter as inout after the type is written. Inout makes the parameter act as a variable.
   In-out parameters can't have a default value. Variadic parameters can't have inout keyword.
5. The String, Int, DOuble are data structure type. They are literal values. They are passed by values. The values are copied if they are pass somewhere. 
6. Classes are passed by reference and Struct is passed by value.

 
*/





