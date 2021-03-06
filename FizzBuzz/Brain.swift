//
//  Brain.swift
//  FizzBuzz
//
//

import Foundation

class Brain: NSObject {
    
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        
        return number % divisor == 0
    }
    
    
    func isDivisibleByThree(number: Int) -> Bool {
        
        return isDivisibleBy(3, number: number)
    }

    
    func isDivisibleByFive(number: Int) -> Bool {
        
       return isDivisibleBy(5, number: number)
    }
    
    
    func isDivisibleByThreeAndFive(number: Int) -> Bool {
        
        return isDivisibleBy(15, number: number)
    }
    
    
    func check(number: Int) -> Move {
        if isDivisibleByThreeAndFive(number) {
            return Move.FizzBuzz
        } else if isDivisibleByThree(number) {
            return Move.Fizz
        } else if isDivisibleByFive(number){
            return Move.Buzz
        } else {
            return Move.Number
        }
    }
    
    
}