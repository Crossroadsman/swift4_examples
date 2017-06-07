//: Strings
//: =======

// (updated for Swift4)
let dogCharacters: [Character] = ["D","o","g","!"]
let dogString = String(dogCharacters)

let greeting = "Hello, world"

//: Indexing
//: --------
greeting[greeting.startIndex]  // "H"

greeting[greeting.index(before: greeting.endIndex)] // "d"

greeting[greeting.index(after: greeting.startIndex)] // "e"

let greetingIndex = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[greetingIndex]

//: Inserting and Removing
//: ----------------------
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: ", world", at: welcome.index(before: (welcome.index(welcome.startIndex, offsetBy: 6))))

welcome.remove(at: welcome.index(welcome.endIndex, offsetBy: -2))
welcome

let welcomeRange = welcome.index(welcome.endIndex, offsetBy: -7) ..< welcome.endIndex
welcome.removeSubrange(welcomeRange)
