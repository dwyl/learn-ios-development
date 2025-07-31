// This file contains all code/language syntax learning 
// while reading the official Swift book:
// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/
// https://github.com/dwyl/learn-ios-development/issues/1#issuecomment-3123434875
// http://localhost:8080/documentation/the-swift-programming-language/guidedtour

print("Hello World!")

let exFloat: Float = 4

print("Float is " + String(exFloat))

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit. \n"

print(appleSummary)
print(fruitSummary)

let quotation = """
Even though there's whitespace to the left,
the actual lines aren't indented.
    Except for this line.
Double quotes (") can appear without being escaped.

I still have \(apples + oranges) pieces of fruit. \n
"""

print(quotation)

var fruits = ["straberries", "limes", "tangerines"]
print(fruits)

// mutates the original fruits array:
fruits[1] = "grapes"
print(fruits)

fruits.append("blueberries")
print(fruits)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]

occupations["Jayne"] = "Public Relations"

print(occupations)

let emptyArray: [String] = []
let emptyDictionary:  [String: Float] = [:]

let individualScores = [75, 43, 103, 87, 12]
// print(String(individualScores))
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

// conditional assignment
let scoreDecoration = if teamScore > 10 {
    "🎉"
} else {
    ""
}

print("teamScore: \(teamScore) \(scoreDecoration)")

// Optional Values
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil // "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

// default value using ??
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)!"
print(informalGreeting)

// Doesn't print anything because nickname is nil:
// if let nickname {
//     print("Hey, |(nickname)!")
// }
// Avoid warning  'nickname' was defined but never used;
print(nickname ?? "nickname is nil")

// Switch statements can have multiple cases a variety of comparisons:
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tasts good in soup.")
}
// Prints "Is it a spicy red pepper?"

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibbonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print("Largest number is \(largest)")
// Prints "25"

// Note:  Dictionaries are an unordered collection, 
// so their keys and values are iterated over in an arbitrary order.


var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
     m *= 2
} while m < 0
print(m)
// Prints "128"

// indexed loop:
var total = 0
// ..< to make a range that omits its upper value
for i in 0..<4 {
    total += i
}
print("total: \(total)")
// Prints "6" (1 + 2 + 3)

// documentation/the-swift-programming-language/guidedtour#Functions-and-Closures

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Wednesday"))

// return a compound value
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print("statistics.sum: \(statistics.sum)")
// Should print "120"
print("statistics.2: \(statistics.2)")
// Should print "120" corresponding the *third* value in tuple (zero-indexed)

// Nested functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print("returnFifteen() -> \(returnFifteen())")

// Functions are a first-class type
func makeIncrement() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrement()
print("increment(7) -> \(increment(7))")

// A function can take another function as one of its arguments:
func hasAnyMatches(list: [Int], conditions: (Int) -> Bool) -> Bool {
    for item in list {
        if conditions(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print("hasAnyMatches(\(numbers)) -> \(hasAnyMatches(list: numbers, conditions: lessThanTen))")

var result = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

print("numbers: \(numbers)")
print("result: \(result) (tripple each number)")

result = numbers.map({ (number: Int) -> Int in
    if number % 2 == 0 {
        return 3 * number
    } else {
        return 0
    }
})
print("result: \(result) (odd numbers return zero)")

// Single statement closures implicitly return the value of their only statement
let mappedNumbers = numbers.map({ number in 3 * number })
print("mappedNumbers: \(mappedNumbers)")
// Prints "[60, 57, 21, 36]"

// Referring to parameters by number:
let sortedNumbers = numbers.sorted { $0 > $1 }
print("sortedNumbers: \(sortedNumbers)")
// Prints "[20, 19, 12, 7]"

// Objects and Classes
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

// instantiate 
var shape = Shape()
// set value/property using dot syntax
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print("shapeDescription: \(shapeDescription)")

// Class with initializer
class NamedShape {
    var numberOfSides: Int = 0
    var nmae: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}