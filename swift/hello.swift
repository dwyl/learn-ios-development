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
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.0, name: "my test square")
print("test.area() -> \(test.area())")
print("test.simpleDescription() -> \(test.simpleDescription())")

// Experiment: Circle
class Circle: NamedShape {
    let pi = 3.14159
    var radius: Double

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }

    func area() -> Double {
        return radius * radius * pi
    }

    override func simpleDescription() -> String {
        return "A circle called \(name) with radius \(radius) and area \(area())"
    }
}

let cirlce = Circle(radius: 4.20, name: "Circle K")
print("Cricle: \(cirlce.simpleDescription())")

// Class properties can have a getter and a setter:
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with side of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print("triangle.perimeter: \(triangle.perimeter)")
// Prints "9.3"
triangle.perimeter = 9.9
print(triangle.sideLength)
// prints "3.3000000000000003"

// ... run before and after setting a new value, use willSet and didSet.
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print("triangleAndSquare.square.sideLength: \(triangleAndSquare.square.sideLength)")
// Prints "10.0"
print("triangleAndSquare.triangle.sideLength: \(triangleAndSquare.triangle.sideLength)")
// Prints "10.0"
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print("triangleAndSquare.triangle.sideLength: \(triangleAndSquare.triangle.sideLength)")
// Prints "50.0"

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
print("sideLength: \(String(describing: optionalSquare?.sideLength))")

// /Enumerations-and-Structures
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
            case .ace: 
                return "ace"
            case .jack:
                return "jack"
            case .queen: 
                return "queen"
            case .king: 
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print("ace: \(ace), aceRawValue: \(aceRawValue)")
print("two: \(Rank.two), Rank.two.rawValue: \(Rank.two.rawValue)")
print("queen \(Rank.queen), Rank.queen.rawValue: \(Rank.queen.rawValue)")

// can't say I find this syntax intuitive ...
// why use a "case" to define the values?

enum Suit {
    case clubs, diamonds, hearts, spades // alphabetical!

    func simpleDescription() -> String {
        switch self {
            case .clubs: 
                return "clubs"
            case .diamonds:
                return "diamonds"
            case .hearts:
                return "hearts"
            case .spades:
                return "spades"
        }
    }
    // Experiment: color method
    func color() -> String {
        switch self {
            case .clubs, .spades: 
                return "black"
            case .diamonds, .hearts:
                return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print("hearts: \(hearts), heartsDescription: \(heartsDescription), color: \(Suit.hearts.color())")
print("spades: \(Suit.spades), spadesDescription: \(Suit.spades.simpleDescription()), color: \(Suit.spades.color())")

enum ServerResponse {
    case result(String, String)
    case failure(String)
    case undecided(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let undecided = ServerResponse.undecided("Maybe")

switch success {
    case let .result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
    case let .failure(message):
        print("Failure... \(message)")
    case let .undecided(message):
        print("Undecided ... \(message)")
}
// Prints: Sunrise is at 6:00 am and sunset is at 8:09 pm

// Struct
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print("threeOfSpades \(threeOfSpades), desc: \(threeOfSpadesDescription)")

// Expriment full deck of cards
func fullDeckOfCards() -> Array<String> {
    let suits = ["♥", "♦", "♣","♠"]
    let ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    var fullDeck: Array<String> = []
    for suit in suits {
        for rank in ranks {
            fullDeck.append("\(rank) \(suit)")
        }
    }

    return fullDeck
}
let deck = fullDeckOfCards()
print("Full Deck of Cards: \n\(deck.joined(separator: ", "))")

// Concurrency
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}

func connectUser(to server: String) async {
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello \(username), user ID \(userID)"
    print(greeting)
}

Task {
    await connectUser(to: "primary")
}
// Prints "Hello Guest, user ID 97"

// The following code threw the error:
// https://github.com/dwyl/learn-ios-development/issues/1#issuecomment-3172449701 🙃
// I don't have the knowledge/time to dig into it, hence commented. 
// I don't expect to *need* Actors or Protocols any time soon; but understand them. 👌

// User Task groups to structure concurrent code
// let userIDs = await withTaskGroup(of: Int.self) { group in
//     for server in ["primary", "secondary", "development"] {
//         group.addTask {
//             return await fetchUserID(from: server)
//         }

//         var results: [Int] = []
//         for await result in group {
//             results.append(result)
//         }
//         return results
//     }
// }

// Actors
// actor ServerConnection {
//     var server: String = "primary"
//     private var activeUsers: [Int] = []
//     func connect() async -> Int {
//         let userID = await fetchUserID(from: server)
//         // ... communicate with server ...
//         activeUsers.append(userID)
//         return userID
//     }
// }

// let server = ServerConnection()
// let userID = await server.connect()

// // Protocols and Extensions
// protocol ExampleProtocol {
//     var simpleDescription: String { get }
//     mutating func adjust()
// }

// class SimpleClass: ExampleProtocol {
//     var simpleDescription: String = "A very simple class."
//     var anotherProperty: Int = 69105
//     func adjust() {
//         simpleDescription += "  Now 100% adjusted."
//     }
// }
// var a = SimpleClass()
// a.adjust()
// let aDescription = a.simpleDescription

// struct SimpleStructure: ExampleProtocol {
//     var simpleDescription: String = "A simple structure"
//     mutating func adjust() {
//         simpleDescription += " (adjusted)"
//     }
// }

// var b = SimpleStructure()
// b.adjust()
// let bDescription = b.simpleDescription

// Use extension to add functionality to an existing type
// extension Int: ExampleProtocol {
//     var simpleDescription: String {
//         return "The number \(self)"
//     }
//     mutating func adjust() {
//         self += 42
//     }
// }
// print(7.simpleDescription)

// Error Handling
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

//  Multiple catch blocks can handle specific errors:
do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse) 
    throw PrinterError.onFire
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.") 
} catch let printerError as PrinterError {       
    print("Printer error: \(printerError).")
} catch {
    print(error)
}
// Prints "Job Sent"

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}
if fridgeContains("banana") {
    print("Found a banana")
}
print("fridgeIsOpen: \(fridgeIsOpen)")
// Prints "false"

// Gnerics
// Write a name inside angle brackets to make a generic function or type.

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
let arr = makeArray(repeating: "knock", numberOfTimes: 4)
print("array: \(arr)")

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
print("anyCommonElements: \(anyCommonElements([1, 2, 3], [3]))")

