//: Playground - noun: a place where people can play

import UIKit

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
