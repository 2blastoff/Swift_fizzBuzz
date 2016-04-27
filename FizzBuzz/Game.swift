//
//  Game.swift
//  FizzBuzz
//
//  Created by c on 19/04/2016.
//  Copyright © 2016 chris. All rights reserved.
//

import Foundation


class Game: NSObject {
    
    let brain: Brain
    
    var score: Int

    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        
                if result == move {
                    score+=1
                    return (true, score)
                } else {
        return (false, score)
                }
    }
}