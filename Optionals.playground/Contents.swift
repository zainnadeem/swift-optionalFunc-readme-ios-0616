func brokenFirstItem(items: [String]) -> String {
    return items[0]
}

var fruits = ["apple", "banana", "grape"]
brokenFirstItem(fruits)  // Works!
fruits = []
// Uncomment the next line to see the problem.
// You will get an "index out of range" error.
//brokenFirstItem(fruits)  // Breaks :-(



func firstItem(items: [String]) -> String? {
    if items.isEmpty {
        return nil
    }
    return items[0]
}

fruits = ["apple", "banana", "grape"]
firstItem(fruits)

if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}

fruits = []
firstItem(fruits)

if let fruit = firstItem(fruits) {
    print("The first fruit is \(fruit)")
} else {
    print("There are no fruits!")
}


func produceFullName(withFirstName firstName: String, middleName: String?, lastName: String) -> String {
    var name = firstName
    if let middleName = middleName {
        name = "\(name) \(middleName)"
    }
    name = "\(name) \(lastName)"
    return name
}

produceFullName(withFirstName: "Jon", middleName: "Bon", lastName: "Jovi")
produceFullName(withFirstName: "Mary", middleName: nil, lastName: "Doe")


//Optional parameters to functions can be very useful and powerful. Of course, if your function takes an Optional as a parameter, you are forced to deal with cases in which nil is passed, so you should only take an Optional parameter when you are prepared to deal with cases in which the value is nil.