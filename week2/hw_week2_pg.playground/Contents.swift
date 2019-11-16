import UIKit

//Object-Oriented Swift
//1.Declare a class ​Animal​ with property ​gender​ and method ​eat()​. The data type of gender should be enum Gender as below and when you call eat() method, it will print I eat everything!
class Animal {
    
    var gender: Gender
    
    enum Gender {
        case male
        case female
        case undefined
    }
    
    init(_ gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}

let male = Animal.Gender.male
let female = Animal.Gender.female
let undefined = Animal.Gender.undefined
var animal = Animal(female)
animal.gender
animal.eat()

//2.Declare three classes: ​Elephant​, ​Tiger​, ​Horse​ that inheriting from Animal andoverride the eat method to print what they usually eat.
class Elephant: Animal {
    override func eat() {
        print("I eat bananas!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat gress!")
    }

}

//3.Declare a class ​Zoo​ with a property ​weeklyHot​ which means the most popular one inthe zoo this week. The codes below can’t work correctly, please find what data typeshould A be and solve the problem. Be ​noticed that ​tiger​, ​elephant​, ​horse​ are instances of class Tiger, Elephant and Horse.
class Zoo {
    
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(undefined))
let tiger = Tiger(undefined)
let elephant = Elephant(undefined)
let horse = Horse(undefined)
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/*4.What’s the difference between ​Struct​ and ​Class​ ?
struct: values, value type, copy, immutable
class: objects, reference type, share, mutable
*/

/*5.What’s the difference between ​instance method​ and ​type method​ ?
 instance method​: need create a instance from class, structure or enum, then call the method.
 type method​: not belong instance, the method belong class, structure or enum itself.
 */

/*6.What does ​Initilizer​ do in class and struct ?
 Initilizer set init value for every properties for a instance.
 */

/*7.What does ​self​ mean in an instance method and a type method ?
 self is the hidden property that present the instance.
 */

/*8.What’s the difference between ​reference type​ and ​value type​ ?
 reference type​: when asign a value to a variable, constant or func, the operation is not copy. The reference is an exist instance.
 value type​: when asign a value to a variable, constant or func, the opration is copy.
*/


//Enumerations and Optionals in Swift
/*1.There are several gasoline types, 92, 95, 98, and diesel that we can use enum tomodel them.
 ●Please create enum named ​Gasoline​ to model gasoline.
 ●Every kind of gasoline has its price. Please create a method named ​getPrice in Gasoline enum that will return different price depending on differentgasoline.
 ●Please establish ​raw values​ for ​Gasoline​. The data type of raw value should be String. For example, ​Gasoline.oil92.rawValue​ should be “92”.
 ●Please explain what is enum ​associate value​ and how it works.
 Every member in enum can be define at least one associate value​ by other types if needed. Associate value​ shoule be put in (), these value can be set into members in enum when programming.
 */
enum Gasoline: String {
    case oil92 = "92", oil95 = "95", oil98 = "98"
}

var getPrice = Gasoline.oil92
getPrice = .oil98
switch getPrice {
case .oil92:
    print("92")
case .oil95:
    print("95")
case .oil98:
    print("98")
}

Gasoline.oil92.rawValue
Gasoline.oil95.rawValue
Gasoline.oil98.rawValue

/*2.Optional is a very special data type in Swift. Take ​​var​ a: ​Int​? = ​10​​​for example, thevalue of ​a​ will be ​nil​ or ​Int​. You should learn how to deal with optional data type.
 ●People would like to have pets, but not everyone could have one. Declare aclass ​Pet​ with ​name​ property and a class ​People​ with ​pet​ property which willstore a Pet instance or nil​. Please try to figure out what data type is suitablefor these properties in Pet and People.
 ●Please create a People instance and use ​guard let​ to unwrap the ​petproperty.
 ●Please create another People instance and use ​if let​ to unwrap the ​petproperty
*/
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
}


//Protocol in Swift
/*1.Declare a struct ​Person​ with a ​name​ property type String and a protocol name PoliceMan​. There is only one method ​arrestCriminals​ with no argument and return void in the protocol.
2.Make struct ​Person​ conform to ​PoliceMan​ protocol.
3.Declare a protocol ​ToolMan​ with a method ​fixComputer​ that no argument and return void.
4.Add a property ​toolMan​ to the struct Person with data type ​ToolMan​.
5.Declare a struct named ​Engineer​ that conforming to the ​ToolMan​ protocol.
6.Create a Person instance with the name Steven and also create the relative data you need to declare this instance.*/
struct Person: PoliceMan {
    
    var name: String
    var toolMan: ToolMan?

    init(_ name: String) {
        self.name = name
    }
    
    func arrestCriminals() {
        print("You are arrest!")
    }
}

protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {
        print("Excellent!")
    }
}

var person = Person("Steven")
person.arrestCriminals()


//Error Handling in Swift
//Read the code above first and paste it in the playground file, there is an error inside thecode.Please solve the error ​by adding additional code​ in the file. Do not remove or modifythe code above. Call ​guess(number:)​ and pass 20 as the argument after you fix theproblem.
enum GuessNumberGameError: Error {
    
    case wrongNumber
}

class GuessNumerGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        
        guard number == targetNumber else {
            
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
}

let guessNumberGame = GuessNumerGame()
try guessNumberGame.guess(number: 20)
