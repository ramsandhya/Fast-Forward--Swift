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














