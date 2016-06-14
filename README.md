# Optionals & Functions

![Sam](http://i.imgur.com/lYsMwwy.jpg?1)  

> Don't watch the clock; do what it does. Keep going. ~[Sam Levenson](https://en.wikipedia.org/wiki/Sam_Levenson)
 

## Learning Objectives - The student should be able to..

* Blah blah blah


## What the student can do at this point 

* Create variables and constants
* Is familiar with type annotations, type inference and string interpolation.
* Can create functions with return types.
* Is familiar with the String, Int, Double, and Bool type.
* Can perform arithmetic operations on Int and Double.
* Understands if and else clause statements.
* Knows how to work with Optionals

## Outline / Notes

* Student should be able to re-create something like this or at the very least understand that they could create something like this:

```swift
func produceFunnyWordWithName(name: String) -> String? {
    
    switch name {
    case "Jessica": return "Fatuous"
    case "Bran": return "Gardyloo"
    default: return nil
    }
    
}

if let funnyWord = produceFunnyWordWithName("Jim") {
    print(funnyWord)
} else {
    print("No funny word to be printed.")
}

// prints "No funny word to be printed."
```

* Another example we possibly could step through:

```swift
func produceFullNameWithFirstName(firstName: String, andLastName lastName: String) -> String? {
    
    if firstName.isEmpty || lastName.isEmpty { return nil }
    
    return "\(firstName) \(lastName)"
}


let firstName = "Jacob"
let lastName = "Ladder"

if let fullName = produceFullNameWithFirstName(firstName, andLastName: lastName) {
    print(fullName)
}


// prints "Jacob  Ladder"
```

* Another example is having them see a function which takes in an array and if it's empty it will return nil. I don't want the function though to have to return the count back from something as they should then return 0 instead of nil in most cases (i would imagine).

* They should see that the arguments to a function can also be optional. Bad example incoming, but you get the idea.

```swift
func blah(rawr: String?) {
    if let trexSound = rawr {
        print(trexSound)
    }
}

blah("gggRRRAHHHH")
// prints "gggRRRAHHHH"
```

<a href='https://learn.co/lessons/OptionalFunctions' data-visibility='hidden'>View this lesson on Learn.co</a>
