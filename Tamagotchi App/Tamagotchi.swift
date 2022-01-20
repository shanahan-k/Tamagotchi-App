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
        if intelligence == 100{
            print("you are too smart! go outside!")
        } else {
            intelligence += Int.random(in: 1...5)
        }
    }
    func eat() {
        hunger +=
    }
    
    
}
