import UIKit

let number = { ( input: Int) -> Bool in
    if (input % 2 == 1) {
        return true
    } else {
        return false
    }
}

number(5)
number(1000)
