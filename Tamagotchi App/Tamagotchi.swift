//
//  Tamagotchi.swift
//  Tamagotchi App
//
//  Created by Shanahan, Krystian (JD) on 20/01/2022.
//

import Foundation

class tamagotchi {
    var hunger : Int
    var boredom : Int
    var intelligence :Int
    var name : String
    
    
    init(hunger:Int,boredom:Int,name:String,intelligence:Int) {
        self.boredom = boredom
        self.hunger = hunger
        self.intelligence = intelligence
        self.name = name
        
    }
    func read() {
    
        intelligence += 5
        if intelligence > 100 {
            intelligence = 100
        }
        
    }
    func eat() {
        hunger += 1
        if hunger > 10 {
            hunger  = 10
        }
    }
    func playGame() {
        boredom -= 1
        if boredom < 0 {
            boredom = 0
        }
    }
    func displayStats() -> String{
        return ("""
            Hunger: \(self.hunger)
            intelligence: \(self.intelligence)
            Boredom : \(self.boredom)
            """)
    }
    
}
