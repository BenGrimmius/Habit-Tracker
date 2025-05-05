//
//  ContentView.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                Friend_List()
            }
            Tab("Habits", systemImage: "figure.run.square.stack.fill") {
                Habit_List()
            }
                              
        }
        
    }
}

#Preview {
    ContentView()
}
