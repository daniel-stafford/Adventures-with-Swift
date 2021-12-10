import Cocoa
import Darwin

//*** VARIABLES ***

var name = "Daniel"
name = "Bob"
name = "Frank"
print(name)

// let is equal to Javascript's const (whereas var = let)
let gender = "male"

var playerName = "Framk"
print(playerName)
playerName = "John"
print(playerName)
playerName = "Daniel"
print(playerName)


// *** STRINGS ***

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"



//escape quotes inside quoes with backslash
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

//multi-lines quite as such
let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)
print(actor.count)

let nameLength = actor.count
print(nameLength)

print(result.uppercased())

//whether a string starts with some letters of our choosing:
print(movie.hasPrefix("A day"))

//checks whether a string ends with some text:
print(filename.hasSuffix(".jpg"))

// strings are case sensitive

// **** WHOLE NUMBERS ******

let score = 10
var reallyBig = 100000000

//swift ignores underscores
reallyBig = 100_000_000
reallyBig = 1_00__00___00____00

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter = counter + 5

counter += 5
print(score)

counter *= 2
print(score)
counter -= 10
print(score)
counter /= 2
print(score)

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// *** DECIMAL NUMBERS ***


//classic problem of decimals stored as floating point numbers
// swift considers it a double (double precision floating-point number)
let decimal = 0.1 + 0.2
print(decimal) // 0.30000000000000004

// cannot mix ints and doubles
let a = 1
let b = 2.0
//let c = a + b
let c = a + Int(b)
let d = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

//cannot switch types
//var name = "Nicolas Cage"
//name = 57

var rating = 5.0
rating *= 2
print(rating)


// *** BOOLEANS ***

let goodDogs = true
let gameOver = false

//! same as JS
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


//toggle()
var gameOver2 = false
print(gameOver)

gameOver2.toggle()
print(gameOver)

//Use \(someVariable) to activate string interpolation.


/*Creates a constant holding any temperature in Celsius.
 Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
 Prints the result for the user, showing both the Celsius and Fahrenheit values.*/


let cel = 5
let far = (cel * 9) / 5 + 32
print("\(cel)°c is \(far)°f")

// *** Arrays ***
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Adrian")

beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

//must be same types
//temperatures.append("Chris")

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
//let notAllowed = firstBeatle + firstNumber

//specific array
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

//shorthand
var albums2 = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

//swift can implicitly figure out time if you assign at leaset one value
var albums3 = ["Folklore"]
albums.append("Fearless")
albums.append("Red")

print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())


// So, when you print out reversedPresidents, don’t be surprised to see it’s not just a simple array any more!
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


// ^^ TUPLES
var singer = (first: "Taylor", last: "Swift")


//*** DICTIONARIES ***
// order, duplicates
// Arrays are a great choice when items should be stored in the order you add them, or when you might have duplicate items in there, but very often accessingdataby its position in the array can be annoying or even dangerous.
// Dictionaries don’t store items according to their position like arrays do, but instead let us decide where items should be stored.


//key value pairs
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

//issue of optionals - whether the data is not there or not, you sure you want to print it?
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

//in case of a key does not exsist, add optional
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

//string: string
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

// int: string
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

// string : int explicit typing
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206


var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
// duplicate key will overwrite
archEnemies["Batman"] = "Penguin"
print(archEnemies)


// *** SETS ***

//no order, no duplicates, fast to find element (as opposed to arrays)

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")


// *** ENUMS ***
//super fast to work with

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum status {
    case started, done, deleted
}

//
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
day = .friday

// *** TYPE ANNOTATIONS ***

//explciit
let surname: String = "Lasso"
var score3: Int = 0

//String, Int, Double, Bool, [String], [String: String]. Set<String>

var foods: [String] = [String]()
// is euqal to
var foods2: [String] = []
//is requal to
var food3 = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark

//USE TYPE INFERENCE WHEN POSSIBLE, often you need to explicit with constant that doesn't have a value yet.

let username: String
username = "@blahblah"
//username = "thiswontwork"
print(username)

// CHECKPOINT 2

// create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let myStringArr = ["Apple", "Peach", "Grape", "Apple"]
let myStringSet = Set(myStringArr)
let numItems = myStringArr.count
let numUniq = myStringSet.count
print("The number of items is \(numItems) while the number of unique items is \(numUniq)")

//*** IF STATEMENTS ****

//if someCondition {
//    print("Do something")
//}

let score4 = 85

if score4 > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}


let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

//alphabetical
if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}


// Make an array of 3 numbers
var numbers2 = [1, 2, 3]

// Add a 4th
numbers2.append(4)

// If we have over 3 items
if numbers2.count > 3 {
    // Remove the oldest number
    numbers2.remove(at: 0)
}

// Display the result
print(numbers2)

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name4 = "Taylor Swift"

if name4 != "Anonymous" {
    print("Welcome, \(name)")
}

var userName = "taylorswift13"

// If `username` contains an empty string
if userName == "" {
    // Make it equal to "Anonymous"
    userName = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(userName)!")

if userName.isEmpty == true {
    userName = "Anonymous"
}

//is equal to
if userName.isEmpty {
    userName = "Anonymous"
}

print(userName)

// *** MULTIPLE CONDITIONS WITH IF ***
let age4 = 16

if age4 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

var temp = 12

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

//*** SWITCH STATEMENTS ***

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

// must be exhaustive and will complain about repeats
// will stop switching until passes (unlike C)
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
//f nothing matches, use matches, do not use with case
default:
    print("Who are you?")
}

let xmasday = 5
print("My true love gave to me…")

switch xmasday {
case 5:
    print("5 golden rings") // this will only print 5 golden rings
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}


//fallthrough

let xmasday2 = 4
print("My true love gave to me…")

switch xmasday2 {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//*** TERNARY CONDITIONAL OPERATOR
//WTF
//WHAT TRUE FALSE
//useful for performing certain logic inside function (like print) in SwiftUI

let age3 = 18
let canVote = age3 >= 18 ? "Yes" : "No"


let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

//*** FOR LOOP ***

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for name in platforms {
    print("Swift works great on \(name).")
}

for rubberChicken in platforms {
    print("Swift works great on \(rubberChicken).")
}

for i in 1...12 { //llop veriable i
    print("5 x \(i) is \(5 * i)") //loop body
} //loop iteration

//cool autocomplete
//for platform in platforms {
//    <#body#>
//}

for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print() //empty line
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)") // 1 2 3 4 5
}

print()

// counting up to, useful for arrays
for i in 1..<5 {
    print("Counting 1 up to 5: \(i)") // 1 2 3 4
}

//when you don't need a loop variable
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//*** WHILE LOOP ***

//useful when you do't know how many times the loop will iterate

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

//You’ll find yourself using both for and while loops in your own code: for loops are more common when you have a finite amount of data to go through, such as a range or an array, but while loops are really helpful when you need a custom condition.


//*** SKIP LOOP ITEMS WITH BREAK AND CONITNUE ***


let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)


//*** CHECKPOINT 3 ****

//Your goal is to loop from 1 through 100, and for each number:
//If it’s a multiple of 3, print “Fizz”
//If it’s a multiple of 5, print “Buzz”
//If it’s a multiple of 3 and 5, print “FizzBuzz”
//Otherwise, just print the number.

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    }
    else if i.isMultiple(of: 3){
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    }
        else {
            print(i)
        }
    }

//*** FUNCTIONS ***

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

let number5 = 139

if number5.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

let roll2 = Int.random(in: 1...20)


//func printTimesTables(number: Int) {
//    for i in 1...12 {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(number: 5)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 20, end: 5)

//must add argument labels (parameters)
//printTimesTables(5, 20)

//*** RETURN FUNCTINONS ***

func rollDice() -> Int {
    Int.random(in: 1...6) //implicit one-line return
}

let result2 = rollDice()
print(result2)

//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    let first = string1.sorted()
//    let second = string2.sorted()
//    return first == second
//}
//
//
//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    return string1.sorted() == string2.sorted()
//}

//when a function has only one line of code, we can remove the return keyword entirely, like this:
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let h = pythagoras(a: 3, b: 4)
print(h)

//*** How to return multiple values from functions using tuples ***

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

//shorthand
func getUser2() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user2 = getUser()
print("Name: \(user.0) \(user.1)")

func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser3()
let firstName = user3.firstName
let lastName = user3.lastName

print("Name: \(firstName) \(lastName)")

//destructure
let (firstName2, lastName2) = getUser3()
print("Name: \(firstName2) \(lastName2)")

//don't need all valeus from tuple
let (firstName4, _) = getUser3()
print("Name: \(firstName4)")


//*** How to customize parameter labels ***

//This method of naming parameters for external use is so important to Swift that it actually uses the names when it comes to figuring out whichmethodto call. This is quite unlike many other languages, but this is perfect valid in Swift:  SUPER WEIRD! 😊

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric2 = "I see a red door and I want it painted black"
print(lyric2.hasPrefix("I see"))

//When we call hasPrefix() we pass in the prefix to check for directly – we don’t say hasPrefix(string:) or, worse, hasPrefix(prefix:). How come?

//func isUppercase(string: String) -> Bool {
//    string == string.uppercased()
//}
//
//let string = "HELLO, WORLD"
//let result = isUppercase(string: string)

//If we add an 🔥underscore🔥 before the parameter name, we can remove the external parameter label like so:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result3 = isUppercase(string)
print(result3)

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

//reads better with for but for is a resserved word

//func printTimesTables(for: Int) {
//    for i in 1...12 {
//        print("\(i) x \(for) is \(i * for)")
//    }
//}
//
//printTimesTables(for: 5)

//use for as external paramter name, number is internal parameter

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

//There are three things in there you need to look at closely:
//
//We write for number: Int: the external name is for, the internal name is number, and it’s of type Int.
//When we call the function we use the external name for the parameter: printTimesTables(for: 5).
//Inside the function we use the internal name for the parameter: print("\(i) x \(number) is \(i * number)").

// *** How to provide default values for parameters ///

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var characters1 = ["Lana", "Pam", "Ray", "Sterling"]
print(characters1.count)
characters1.removeAll()
print(characters1.count)

characters.removeAll(keepingCapacity: true)
//This is accomplished using a default parameter value: keepingCapacity is a Boolean with the default value of false so that it does the sensible thing by default, while also leaving open the option of us passing in true for times we want to keep the array’s existing capacity.V

// ***  How to handle errors in functions ***

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

//Let’s break that down…
//
//If a function is able to throw errors without handling them itself, you must mark the function as throws before the return type.
//We don’t specify exactly what kind of error is thrown by the function, just that it can throw errors.
//Being marked with throws does not mean the function must throw errors, only that it might.
//When it comes time to throw an error, we write throw followed by one of our PasswordError cases. This immediately exits the function, meaning that it won’t return a string.
//If no errors are thrown, the function must behave like normal – it needs to return a string.


//do {
//    try someRiskyWork()
//} catch {
//    print("Handle errors here")
//}

let blah = "12345"

do {
    let result = try checkPassword(blah)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}


let meow = "12345"

do {
    let result = try checkPassword(meow)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.\(error.localizedDescription)")
}

//Tip: Most errors thrown by Apple provide a meaningful message that you can present to your user if needed. Swift makes this available using an error value that’s automatically provided inside your catch block, and it’s common to read error.localizedDescription to see exactly what happened.

//Functions can throw errors: you create an enum defining the errors you want to happen, throw those errors inside the function as needed, then use do, try, and catch to handle them at the call site.

//** Checkpoint 4 ***


//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

//You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//If you can’t find the square root, throw a “no root” error.
//As a reminder, if you have number X, the square root of X will be another number that, when multiplied by itself, gives X. So, the square root of 9 is 3, because 3x3 is 9, and the square root of 25 is 5, because 5x5 is 25.

enum  getSquareError: Error {
    case outOfBounds, noRoot
}


func getSquare(num: Int) throws -> Int {
    if num < 1 || num > 10_000 {
        throw getSquareError.outOfBounds
    }
    let dbl = pow(Double(num), 1/2)
    if floor(dbl) != dbl {
        throw getSquareError.noRoot
    }
    return Int(dbl)
}
    

let myInt = 15

do {
    let result = try getSquare(num: myInt)
    print("The square of \(myInt) is \(result)")
} catch getSquareError.outOfBounds {
    print("Your number should be between 1 and 10,000")
} catch getSquareError.noRoot {
    print("There is no integer root for \(myInt)")
}

/// * How to create and use closures ///

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

// Important: When you’re copying a function, you don’t write the parentheses after it – it’s var greetCopy = greetUser and not var greetCopy = greetUser(). If you put the parentheses there you are calling the function and assigning its return value back to something else.

let sayHello = {
    print("Hi there!")
}

sayHello()
//Swift gives this the grandiose name closure expression, which is a fancy way of saying we just created a closure – a chunk of code we can pass around and call whenever we want. This one doesn’t have a name, but otherwise it’s effectively a function that takes no parameters and doesn’t return a value.

//If you want the closure to accept parameters, they need to be written in a special way.
let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}
//I added an extra keyword there – did you spot it? It’s the in keyword, and it comes directly after the parameters and return type of the closure. A

var greetCopy3: () -> Void = greetUser
//The empty parentheses marks a function that takes no parameters.
//The arrow means just what it means when creating a function: we’re about to declare the return type for the function.
//Void means “nothing” – this function returns nothing. Sometimes you might see this written as (), but we usually avoid that because it can be confused with the empty parameter list.

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

//named parameters get lost when using closures (reference to a function)
//named parametse are only used when calling a function directly
let data: (Int) -> String = getUserData
let user4 = data(1989)
print(user4)


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

//sorted should accepted two strings and return a bool, so we can customize it
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

//writing a closure directly rather than reference
let captainFirstTeamClosure = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

//We’re calling the sorted() function as before.
//Rather than passing in a function, we’re passing a closure – everything from the opening brace after by: down to the closing brace on the last line is part of the closure.
//Directly inside the closure we list the two parameters sorted() will pass us, which are two strings. We also say that our closure will return a Boolean, then mark the start of the closure’s code by using in.
//Everything else is just normal function code.

// *** How to use trailing closures and shorthand syntax ***

//trailing closure syntax
let captainFirstTeam4 = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

//shorthand syntax
let captainFirstTeam5 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

//if just to just get a reverse sort, can make it one line
let reverseTeam = team.sorted { $0 > $1 }

//use shorthand UNLESS -
//1. The closure’s code is long.
//2. $0 and friends are used more than once each.
//3. You get three or more parameters (e.g. $2, $3, etc).
//

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

//going to be using closures a lot with SwiftUI:

//When you create a list of data on the screen, SwiftUI will ask you to provide a function that accepts one item from the list and converts it something it can display on-screen.
//When you create a button, SwiftUI will ask you to provide one function to execute when the button is pressed, and another to generate the contents of the button – a picture, or some text, and so on.
//Even just putting stacking pieces of text vertically is done using a closure.

//*** How to accept functions as parameters ***

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    //dont need to use iterator variable so _ rather than i and from 0 until just before the size argument
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

//The function is called makeArray(). It takes two parameters, one of which is the number of integers we want, and also returns an array of integers.
//The second parameter is a function. This accepts no parameters itself, but will return one integer every time it’s called.
//Inside makeArray() we create a new empty array of integers, then loop as many times as requested.
//Each time the loop goes around we call the generator function that was passed in as a parameter. This will return one new integer, so we put that into the numbers array.
//Finally the finished array is returned.

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

//function that accepts mutiple funcion parameters
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

//first parameter is unamed, while rest are named with braces
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

// *** Checkpoint 5 ***

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//Filter out any numbers that are even
//Sort the array in ascending order
//Map them to strings in the format “7 is a lucky number”
//Print the resulting array, one item per line
//So, your output should be as follows:
//
//7 is a lucky number
//15 is a lucky number
//21 is a lucky number
//31 is a lucky number
//33 is a lucky number
//49 is a lucky number

let getLucky: ([Int]) -> Void = { arr in
    arr.filter { $0 % 2 != 0 }
    .sorted()
    .forEach { print("\($0) is a lucky number \n") }
}

getLucky(luckyNumbers)

