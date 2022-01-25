//
//  ContentView.swift
//  Tamagotchi App
//
//  Created by Shanahan, Krystian (JD) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var tamagotchiObject = tamagotchi(name: "Mark",isMale: true)
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            Section {
                HStack {
                    Text("Name: \(tamagotchiObject.name)\nFeeling: \(tamagotchiObject.getFeeling())").padding()
                    Spacer()
                    Text("Gender: \(tamagotchiObject.getGender())").padding()
                }
            }
            Spacer()
            Form {
                Text(tamagotchiObject.displayStats())
                    .padding()
                Button("Give Snack",action: { tamagotchiObject.eatSnack()}
                )
                Button("Give Meal", action: {tamagotchiObject.eatMeal()})
                Button("Play Game", action:{tamagotchiObject.playGame()})
                Button("Read",action: {tamagotchiObject.read()})
                Button("Go to the Bathroom",action:{tamagotchiObject.goBathroom()} )
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

