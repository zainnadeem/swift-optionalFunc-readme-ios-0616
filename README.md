# Optionals & Functions

![Sam](http://i.imgur.com/lYsMwwy.jpg?1)

> Don't watch the clock; do what it does. Keep going. ~[Sam Levenson](https://en.wikipedia.org/wiki/Sam_Levenson)

## Learning Objectives - The student should be able to...

* Return `Optional` types from functions
* Accept and work with `Optional` function parameters

## Returning `Optional`s From Functions

You've learned about `Optional` values in the past couple of lessons. In a previous unit, you also learned how to write functions that return values. Do you think it's possible to combine these two bits of knowledge? Can you write a function that returns an `Optional`?

You can! An `Optional` is really no different than any other type of value. Just like you can return an `Int` or a `String` from a function, you can also return an `Optional` as well. And you do it just as you probably expect! Let's see this in action.

Imagine this: You are tasked with writing a function, `firstItem`, that takes in an array of strings and returns the first item in the list. The return value of the function would be of type `String`, wouldn't it? You might write a function like this:

```swift
func firstItem(items: [String]) -> String {
    return items[0]
}
```

That works really well when you have a list of items:

```swift
var fruits = ["apple", "banana", "grape"]
firstItem(fruits)
// Returns "apple"
```

What if your list is empty, though?

```swift
var fruits = []
firstItem(fruits)
// Uh oh! You get an index out of range error.
```

If the list is empty, you get an error that the index is out of range! In an empty list, there is no first item.

Now that you know about `Optional`s, it should be fairly easy to fix up this function. The first item is optional: It may or may not exist. So your `firstItem` function can be rewritten to possibly return the first item. There might not be a first item, though, in which case your function will return `nil`. The return value of your function, then, is of type `String?` (an optional `String`), instead of `String`.

Can you rewrite `firstItem` so it doesn't crash if the array of strings passed to it is empty?

You probably ended up with something like this:

```swift
func firstItem(items: [String]) -> String? {
    if items.isEmpty {
        return nil
    }
    return items[0]
}
```

Try calling your new `firstItem` function with both a non-empty and empty list. What happens?

```swift
var fruits = ["apple", "banana", "grape"]
firstItem(fruits)
// Returns "apple"
fruits = []
firstItem(fruits)
// Returns nil
```

If you enter the above code, along with your definition of `firstItem`, into a new playground, you can see what the return value of each line will be. Remember that you can also use optional unwrapping to print a message, depending on whether `firstItem` returns a string or returns nil. Try running this in a playground:

```swift
fruits = ["apple", "banana", "grape"]
if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}
// Prints "The first fruit is apple"

fruits = []
if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}
// Prints "There are no fruits!"
```

Pretty neat, huh? You'll find that many functions and methods in Swift's standard library are designed to return `Optional`s, and you'll probably write many of your own functions that will return `Optional`s, too. They're very useful!

## Optional Function Parameters

Not only can functions return `Optional` values, they can take `Optional`s as parameter types, as well. Doing so is just as straightforward as you would expect.

Imagine you are writing a function that takes in a person's first, middle, and last names, and constructs a properly-formatted string with all three of those names. Some people don't have middle names, though, so perhaps that parameter should be optional.

No problem! You can just specify the type as `String?` instead of `String`, and everything will be groovy. You will, of course, have to deal with the possibility of a `nil` value being passed in, but that should be easy for you to handle with optional unwrapping or similar techniques you have learned about.

Here is an example for building a full name string from the given parts:

```swift
func produceFullName(withFirstName firstName: String, middleName: String?, lastName: String) -> String {
    var name = firstName
    if let middleName = middleName {
        name = "\(name) \(middleName)"
    }
    name = "\(name) \(lastName)"
    return name
}
```

Notice that `firstName` and `lastName` are declared as `String`s—they are _not_ optional—whereas `middleName` is instead a `String?`. In the body of the function, optional unwrapping is used to detect if `middleName` is not `nil` and include it in the string if it isn't (that is, if a value exists for `middleName`). Pretty easy, right?

Go ahead and add that to your playground file, then try calling it a few different ways. What happens if you call `produceFullName` using the following code?

```swift
produceFullName(withFirstName: "Jon", middleName: "Bon", lastName: "Jovi")
// Returns "Jon Bon Jovi"

produceFullName(withFirstName: "Mary", middleName: nil, lastName: "Doe")
// Returns "Mary Doe"
```

Optional parameters to functions can be very useful and powerful. Of course, if your function takes an `Optional` as a parameter, you are forced to deal with cases in which `nil` is passed, so you should only take an `Optional` parameter when you are prepared to deal with cases in which the value is `nil`.

<a href='https://learn.co/lessons/OptionalFunctions' data-visibility='hidden'>View this lesson on Learn.co</a>
