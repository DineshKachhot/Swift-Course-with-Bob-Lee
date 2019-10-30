//: [Previous](@previous)

/*:
 ## Why do I see '?' and '!' while calling methods and properties?
 
 - Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil.
 */


/*:
 |: Note this is an UIKit example
 */

import UIKit

let labelColor = UILabel().highlightedTextColor?.cgColor

// Let's understand how it works

class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, I am \(name)")
    }
}

//: Design another class

class Apartment {
    var human: Human?
}

//: Initialize

var apartment = Apartment()
apartment.human = Human(name: "Denny Kachhot")

//: Force unwrapping
let name = apartment.human?.name
apartment.human!.sayHello()

//: Implicit Unwrapping
let NYCApartment = Apartment()
NYCApartment.human?.name

if let recidentName = NYCApartment.human?.name {
    print(recidentName)
} else {
    print("No name found")
}

//: [Next](@next)
