//
//  Tamagotchi.swift
//  Tamagotchi App
//
//  Created by Shanahan, Krystian (JD) on 20/01/2022.
//

import Foundation

class tamagotchi: ObservableObject {
    @Published var hunger : Int
    @Published var boredom : Int
    @Published var intelligence :Int
    @Published var name : String
    @Published var hygiene : Int
    @Published var health : Int
    @Published var Sex : Bool
    
    
    init(name : String,isMale: Bool) {
        self.boredom = Int.random(in: 2...100)
        self.hunger = Int.random(in: 2...50)
        self.intelligence = Int.random(in: 3...100)
        self.name = name
        self.hygiene = Int.random(in: 2...5)
        self.health = 50
        self.Sex = isMale
    }
    func read() {
    
        self.intelligence += 5
        if self.intelligence > 100 {
            self.intelligence = 100
        }
        let rand = Int.random(in: 0...10)
        if rand == 3 {
            self.boredom += 2
        }
        
    }
    func getGender() ->String {
        if self.Sex {
            return "Male"
        }
        else {
            return "Female"
        }
    }
    private func hygieneCheck() {
        if hygiene < 0 {
            hygiene = 0
        } else if hygiene > 10 {
            hygiene = 10
        }
    }
    func eatSnack() {
        self.hunger -= 1
        if self.hunger < 0 {
            self.hunger  = 0
        }
        let random = Int.random(in: 0...5)
        if random == 4 {
            self.hygiene += 1
            hygieneCheck()
            
        }
    }
    
    func eatMeal() {
        self.hunger -= 5
        if self.hunger < 0 {
            self.hunger  = 0
        }
        let random = Int.random(in: 0...5)
        if random == 4 {
            self.hygiene += 3
        }
    }
    func playGame() {
        self.boredom -= 1
        if self.boredom < 0 {
            self.boredom = 0
        }
    }
    func goBathroom() {
        self.hygiene -= 1
        hygieneCheck()
    }
    
    
    func getFeeling() -> String {
        if self.boredom < 2 && self.hunger < 2 && self.hygiene < 3{
            return "Great!"
        } else if   self.boredom < 5 && self.boredom >= 2 {
            return "Meh"
        }else {
            return "Not so Good"
        }
    }
    func displayStats() -> String{
        return ("""
            Hunger: \(self.hunger)
            intelligence: \(self.intelligence)
            Boredom : \(self.boredom)
            Hygiene : \(self.hygiene)
            Health : \(self.hygiene)
            """)
    }
    
}
