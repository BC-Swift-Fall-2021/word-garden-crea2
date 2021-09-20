import UIKit

var myName = "Gallaugher"
var smallerString = "laugh"

if myName.contains(smallerString) {
    print("\(myName) contains \(smallerString)")
} else {
    print("There is no\(smallerString) in \(myName)")
}

 // hasPrefix + hasSuffix

var occupation = "Swift Developer"
var searchString = "Swift"

if occupation.hasPrefix(searchString) {
    print("You're Hired!")
} else {
    print("No job for you")
}

print("\nSUFFIX SEARCH")
occupation = "iOS Hater"
searchString = "Developer"

if occupation.hasSuffix(searchString) {
    print("You're Hired! We need more \(occupation)s")
} else {
    print("No job for you. No one needs any \(occupation)s")
}

// .removeLast()
print("\nREMOVE")
var bandName = "The White Stripes"
let lastChar = bandName.removeLast()
print("After we remove \(lastChar) the is just \(bandName).")

// .removeFirst(k: Int)
print("\nREMOVE FIRST #")
var person = "Dr. Nick"
let title = "Dr."
person.removeFirst(title.count + 1)
print(person)

// .replacingOccurances(of: with:)
print("\nREPLACING OCCURANCES OF")

// 123 James St.
// 123 James St
// 123 James Street

var address = "123 James St."
var streetString = "St."
var replacementString = "Street"

var standardAddress = address.replacingOccurrences(of: streetString, with: replacementString)
print(standardAddress, address)

// Iterate through a string
print("\nBACKWARDS STRING")

var name = "Gallaugher"
var backwardsName = ""
for letter in name {
    backwardsName = String(letter) + backwardsName
}
print("\(name), \(backwardsName)")

// capitalization
print("\nPLAYING WITH CAPS")
var crazyCaps = "SwIfT"
var uppercased = crazyCaps.uppercased()
var lowercased = crazyCaps.lowercased()
var capitalized = crazyCaps.capitalized

print(uppercased, lowercased, capitalized)
print(crazyCaps)

var wordToGuess = "Swift"
var revealedWord = ""
for _ in 1...wordToGuess.count {
    revealedWord = revealedWord + "_ "
}
//revealedWord.remoceLast()
print("\(wordToGuess) will show as '\(revealedWord)'")

// Create a String from a repeating value

var repeatingRevealedWord =  "_" + String(repeating: " _", count: wordToGuess.count-1)
print (repeatingRevealedWord)

// Reveal the word
print("\nReveal the word")

wordToGuess = "SWIFT"
var letterGuessed = "SQFTX"
revealedWord = ""

// loop through all letter in wordToGuess
for letter in wordToGuess {
            // check if letter in wordtoguess is inletterguessed
    if letterGuessed.contains(letter) {
            // if so add this letter + a blank space, to revealWord
            revealedWord = revealedWord + "/()"
    } else {
        // if not add an underscore + a blank space to revealedword
            revealedWord = revealedWord + "_ "
    }
}
// remove the extra space at the end of revealedWord
revealedWord.removeLast()

print("wordToGuess = \(wordToGuess)")
print("lettersGuessed = \(letterGuessed)")
print("revealedWord = \(revealedWord)")
