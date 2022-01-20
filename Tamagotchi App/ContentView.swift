//
//  ContentView.swift
//  Tamagotchi App
//
//  Created by Shanahan, Krystian (JD) on 20/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tamagotchiObject = tamagotchi(hunger: 5,boredom: 5,name: "mark",intelligence: 5)
    var body: some View {
        VStack {
        Spacer()
        HStack {
        Form{
            Section {
                Text(tamagotchiObject.displayStats())
                .padding()
            }
        }
        }
    }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

