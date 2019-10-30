
import Foundation

/*:
 ## Why optionals exist?
 
 ## Rules
 - Every variable type must be defined (Implecit/ Explicit)
 - The type can be infered based on the value
 - Every normal type should have value associated
 
 */

let name: String = "Denny"              // Explicit
let description = "Denny the developer" // Implicit

// Optional type allow variables to store nil value
let myName: String? = nil
let myDescription: String? = "Denny Kachhot"
print(myName)
print(myDescription)

/*:
 ## Optional Rule:
 * Optional do not interact with each other
 * Convert Optionals to normal types, the process known as ***Unwrapping***
 */
let dennyAge: Int? = nil
let jalAge: Int? = 29

//dennyAge + jalAge

/*:
 ## Optional Unwrapping
 
 Forced Unwrapping
  
 */

let newDennyAge = dennyAge!
let newJalAge = jalAge!

/*:
 ## Safe/Implicit Unwrapping
 */

let imageFromFacebook: String? = "Denny's Face"

if let normalImage = imageFromFacebook {
    print(normalImage)
} else {
    print("There is no Image")
}


//: [Next](@next)
