import UIKit

//Winter 2019 / iOS ClassRemote Learning Assignment - Week 1Basic

//Assignment 1: Git & GitHub
/* 2.Here are a few git and GitHub commands we usually use in software development,please explain the meanings and use cases of them.
 ●git status: check status of the files current state of the repository.
 ●git add: add files in to the staging area for Git
 ●git commit: record the changes made to the files to a local repository.
 ●git log: show the history of commit for a repository.
 ●git push [ Repo_name ] [ Branch_name ]: sending my committed changes to a remote repository
 ●git remote -v: list named remote repositories
 ●git branch: determine what branch the local repository is on, add a new branch, or delete a branch.
 ●fork: a personal copy of another user's repository that lives on your account.
 */

/* 3.Please describe how to establish a github repo and how to upload the local projects to github. Try to explain it as detail as possible.
 Select New repository in github, create a repository name, and clone the https url to the folder in local.
 Add a file name README and intput "git status" in terminal to check the status, and input "git add README" to add file in local, input "git commit" to commit changes in local, finally, input "git push" to update the changes in github.
 */

//Basic
//1.In swift , we usually define a variable through the syntax as below:.​var​ x: ​Int​ = ​10​.When calculating circle’s area, we use the formula: ​ 2 * radius * Pi​ to get area. Now,please define a variable ​ Pi ​ and assign a value to it. You can refer to the syntaxabove while do think about using  ​ var ​ or ​ let ​ and which data type it should be.
let Pi: Float = 3.14159

//2.Create two constants x and y of type ​Int​ then assign any value to them. After that,please calculate the average of x and y and store the result in a constant named average.
let x: Int = 10
let y: Int = 3
let average: Int = (x + y) / 2
print(average)

//3.Following with Q2, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
//●Please solve this problem so that we can put the average in the recordsystem.
let recordSystem = Float(average)

/* ●Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
 ( 10 / 3 ) result in a int value 3, and ( 10.0 / 3.0 ) result in a float value 3.3.
*/
let a: Int = x / y
let q: Float = 10.0
let w: Float = 3.0
let b: Float = q / w

//4.Swift is a very powerful language that it can infer the data type for you (​ Typeinference ​) while we still need to know the basics well. Please change the followingcodes into the one with data type.
var flag: Bool = true
var intputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Float = 86.6

//5. Compound assignment ​ operator is very useful when programming. Please create salary as 22000, and use ​ unary plus operator ​ adding 28000 to salary, and it will be 50000 after this process.
var salary: Int = 22000
salary = salary + 28000
print(salary)

//6.You should notice that ​ ‘=’ ​ has difference meaning in programming. In real world, ​ ‘=’means equal while In programming, ​ ‘=’ ​ means ​assign​. You simply put the right handside data into left hand side variable or constant.Now please write down the ​Equality​ operator in swift.
x == y

//7.Declare two constants that values are 10 and 3 each, then please calculate theremainder and save the result in a constant named ​remain​.
let remain: Int = x / y

/* 8.Please explain the difference between​​ let​ and​​ var​.
let define constants and var define variables.
 */

/* 9.Please write down naming conventions and rules you learned in this session.
 Using camel case including all needed words.
*/

/* 10.What is Type Inference in swift?
 If I didn't define type for parameter, swift will use type inference to choose the suitable one for parameter.
 */

/* 11.What is the problem about this piece of code?
 var​ phoneNumber = ​0987654321
 phoneNumber​ ​=​ ​"Hello world."
 
 phoneNumber is determined int by type inference, so we can't set string in it.
 */

//Collection
//1.Please create an empty array with String data type and save it in a variable named myFriends​.
var myFriends: [String] = []

//2.According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help meto add their name in to ​myFriends​ array.
myFriends += ["Ian", "Bomi", "Kevin"]

//3.Oops,I forget to add ‘Michael’ who is one of my best friend, please help me to addMichael to the end of ​myFriends​ array.
myFriends.append("Michael")

//4.Because I usually hang out with Kevin, please move Kevin to the beginning of the myFriends​ array.
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//5.Use for...each to print all the friend in ​myFriends​​array.
myFriends.forEach{(i) in
    print(i)
}

/* 6.Now I want to know who is at index 5 in the ​myFriends​ array, try to find the answer for me. Please explain how did you get the answer and why the answer is it.
 It's shows "Fatal error: Index out of range", because the array only have 4 person that in index 0~3, so there is nobody in index 5.
*/

//7.How to get the first element in an array?
myFriends.first

//8.How to get the last element in an array?
myFriends.last

//9.Please create an dictionary with keys of type String, value of type Int, and save it in avariable named ​myCountryNumber​.
var myCountryNumber: Dictionary<String, Int> = [:]

//10.Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//11.Change the ‘GB’ value from 44 to 0.
myCountryNumber["GB"] = 0
print(myCountryNumber)

//12.How to declare a empty dictionary?
var emptyDictionary = [Int: String]()

//13.How to remove a key-value pair in a dictionary?
emptyDictionary[7] = "seven"
emptyDictionary = [:]
print(emptyDictionary)

//Control Flow
/*1.Here is an array:
let​ lottoNumbers = [​10​, ​9​, ​8​, ​7​, ​6​, ​5​]
Please use For-Loop and Range to print the last three members in the ​lottoNumbersarray.*/
let lottoNumbers: [Int] = [10, 9, 8, 7, 6, 5]
for index in lottoNumbers.count - 3...lottoNumbers.count - 1{
    print(lottoNumbers[index])
}

//2.When use for-in loop, we make the computer do the same thing multiple times. Theindex is increasing by 1. What if we want to decreasing by -1 ? What if we want toincreasing by 2 ? Please use swift syntax to get the result as images list below :
for i in stride(from: 5, to: 11, by: 1){
    print(i)
}
print("-----")
for i in stride(from: 10, to: 5, by: -2){
    print(i)
}

var count: Int = 4
for _ in 0...5 where count <= 10{
    count += 1
    print(count)
}

for _ in 0...3 where count >= 6 {
    print(count)
    count -= 2
}

//3.Please use while loop to solve above question.
var count2: Int = 4
while count2 < 10 {
    count2 += 1
    print(count2)
}

while count2 >= 6 {
    print(count2)
    count2 -= 2
}

//4.Please use repeat-while loop to solve question 2.
var count3: Int = 10
repeat {
    print(count3)
    count3 -= 2
} while count3 >= 6

/*5.What are the differences between while and repeat-while?
 The while loop check the condition bofore the loop code, and repeat while check the condition after.
 */

//6.Here is variable ​isRaining​ to record the weather. Please write a statement that if the weather is raining, print ​“It’s raining, I don’t want to work today.”​, otherwise print“Although it’s sunny, I still don’t want to work today.”
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//7.In a company, we usually use numbers to represent job levels. Let’s make aexample. We have four job levels : Member, Team Leader, Manager, Director. Weuse 1 to present Member, 2 to Team Leader, 3 to Manager, 4 to Director.Now, create a variable name ​jobLevel​ and assign a number to it. If jobLevel numberis in our list, print the relative job title name; if not, just print ​“We don't have this job”​.Please use switch statement to complete this requirement.
var jobLevel: Int = 7
switch jobLevel {
case 1:
    print("Member")
    break
case 2:
    print("Team Leader")
    break
case 3:
    print("Manager")
    break
case 4:
    print("Director")
    break
default:
    print("We don't have this job")
}

//Function
//1.Please declare a function named ​greet​ with ​person​ as argument label and ​name​ asparameter name. This ​greet​ function will return a String. For example, if you call thefunction greet like this:greet​(person: ​"Celeste"​)It will return string: ​“Hello, Celeste”​.
func greet(person: String) -> String {
    let hi = "Hello" + ", \(person)"
    return hi
}

print(greet(person: "Celeste"))

//2.Please declare a function named ​multiply​ with two argument ​a​ , ​b​ , and with no returnvalue that when you call this function, compiler will print out  the result of ​a * b​. Benoticed that we want to give argument ​b​ with a ​default value​ 10.
func multiply(a: Int, b: Int = 10){
    print(a*b)
}
multiply(a: 8)
multiply(a: 8, b: 7)

/*3.What’s the difference between argument label and pararmeter label in function ?
 arguments are the datas I put in the method when method called, parameters are variables in the declaration of function.
 */

/*4.What are the return type in the following statements?
 String
 Double
 */
