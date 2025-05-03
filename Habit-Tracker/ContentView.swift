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
            Friend_List()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 40))
                    Text("Friends")
                }
            Habit_List()
                .tabItem {
                    Image(systemName: "figure.run.square.stack.fill")
                        .font(.system(size: 40))
                    Text("Habits")
                }
                              
        }
        
    }
}

#Preview {
    ContentView()
}
