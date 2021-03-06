//: # Swift Fundamentals I
//: ## Hello, World!
//: As tradition dictates, any exploration of a new language needs to start with "hello, world"

print("Hello, World!")

//: ## Comments
//: A comment is text that is ignored by the compiler. So it can be plain text, or even code. If it formatted like the examples below, it will be completely ignored when the project is built. Comments are notes to yourself or others about how a given block of code functions.

// A single line comment is one with two slashes as the first characters
/*
 * A multi-line comment
 * is one that is bounded by
 * /* and */ characters
 */

//: ## Identifiers
//: first character A-Z or a-z or _, followed by any of these plus 0-9
//lambdaSchool is our identifier below
let lambdaSchool = "Awesome"

print(lambdaSchool)

var favoriteColor = "purple"
 //favoriteColor = "blue"
print("Hi, my favorite color is \(favoriteColor)")



//: ## Mutability
//: There are two kinds of containers that hold values in Swift. One kind is called a constant, because once a value has been set, it cannot change for the lifetime of that container. Constants are declared with the `let` keyword.
let myFirstName: String = "Wesley" // let cannot be redeclared

print(myFirstName)

//: Variables are declared with the 'var' keyword
var favoriteFood = "Tacos" // var can be redeclared .
print("Hi, my name is \(myFirstName) and my favorite food is \(favoriteFood)!")
 
favoriteFood = "Burgers"
//a year later
print("Hi, my favorite food is \(favoriteFood)!")



//: ## Type Inference and Explicit Typing
//: All containers in Swift must have a type set on them. The containers we've seen so far had their types set implicitly. This is called _type inference_. Meaning the kind of object stored in the container was determined by looking at what kind of value was assigned to the container.
// Without Type Inference

var myNumber: Int = 2

// With Type Inference

let ios = "Apple's mobile operating system."

//: In the line above, the constant `ios` stores a value "Apple's mobile operating system". This value is a `String`, so the data type of `ios` is `String`. The type was _inferred_ by the value provided.
//: Another way to type a container is to set it explicitly. See some examples of this below.
var onSale: Bool = true // or false


//: ## Type Safety
//: Once a container's data type is set, it cannot hold a value of any other type
// This will not work because onSale is always a Boolean
//onSale = "Yes"


//: ## Type Coercion
//: Types are never automatically converted into another type.
let label = "The width is"
let width = 94

//cannot combine the two different data types unless we change one

let combined = label + String(width)


//: ## String Interpolation and Concatenation
//: Using the `+` operator with two strings is called _string concatentation_. One string is appended to the end of another.
let heightLabel = "The height is: " + "100"
print(heightLabel)
//: The below example shows the _string interpolation_ characters (`\()`). These allow a `String` (or non-string) value to be placed in-line inside a larger `String` literal value. If the value is not already a `String`, it will be converted.
let widthLabel = "The width is \(width)."
print(widthLabel)

//: ## Collections
//: ### Arrays
//: A Swift array is a collection of like objects, and they are stored in the order they are added. Accessing a particular element is done by using its index value (which starts at 0).
let shipCaptains = ["Malcolm Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo"]
let differentCaptains = ["Jean-Luc Picard", "James T. Kirk", "Han Solo"]

// Subscript - choose a certain item of an array

let james = shipCaptains[2]

//: Array equality is determined by looking at each element. If all elements are the same, and in the same order, the two arrays are equal.
if shipCaptains == differentCaptains {
    print("The arrays are equal!")
} else {
    print("The arrays are NOT equal!")
}


//: Since `shipCaptains` was declared as a constant, we must convert it to a mutable array before we can add entries.
//sample array
var myHobbies  = ["Coding", "OneWheeling", "Adventure"]
//turn shipCaptains into a mutable variable
var moreCaptains = shipCaptains

//.append adds a new element to the end of the array
moreCaptains.append("Some new captain")

//.insert allows you to choose where to add a new element in an aray
moreCaptains.insert("Jack Sparrow", at: 3)


//: ### Dictionaries
//: A Swift dictionary is similar to an array in that is a collection, but the items are stored in no particular order. To access an item, its associated key is provided. Dictionaries are also called "key-value" stores. The key has a type, and the value can have the same or a different type.
var occupations = ["Wes": "Student", "Brian": "Team Lead"]
//what is Brian's occupation
occupations["Brian"]
// we call Brian above because this is the key and occupation is the value

//add a new value or update a current value to our dictionary
occupations.updateValue("Team Lead", forKey: "Kenny")


//removing value for our key Brian
occupations.removeValue(forKey: "Brian")
//: ## Looping
//: ### `for`
//: `for` loops allow for iterating over a collection of elements (usually an array), examining each element in turn.
let scores = [92, 10 , 84, 72, 19]

//loop through array and print all scores
for score in scores{
    
    if score < 90{
        print("You did not get an A grade.")
    } else {
        print("You got an A!!")
    }
    print("Your score is \(score)")
}
//: ### `switch`
//: `switch` statements are useful when a multiple-choice path is possible for your code, and you want to choose a single path at runtime, based on some criteria.
let diceRoll = 7

switch diceRoll {
case 1:
    print("Rolled a 1")
case 2, 3:
    print("Rolled more than 1 but less than 4")
case 4...6:
    ("Rolled a number from 4-6")
default:
    print("You must have more than one die.")
}
//: ## Functions
//: A function in Swift is nothing more than a collection of instructions that accomplish some task. The advantage to grouping the instructions into a function is that the function can then be called whenever that task should be performed, rather than having to list out those instrutions a second, third, or nth time.
func averageScores(scores: [Int]) -> Int {
    var totalScore = 0
    
    for score in scores{
        totalScore += score //+= means take totalScore and add it to score
        //+= means take the left and add the right to it to find a sum
    }
        let average = totalScore / scores.count
       
   return average
}

averageScores(scores: [29, 10, 93, 78, 21])
averageScores(scores: scores) //pass in a variable array
//: ## Tuples
//: Tuples are a lightweight way of grouping related values into a single compound value.
let me = (name: "Wes", favoriteColor: "purple", role: "iOS student")
//select each key with dot notation.
me.name
me.favoriteColor
me.role
me

//Inventory example
let carrots = (name: "carrots", aisle: 4, inStock: true)

carrots.inStock
