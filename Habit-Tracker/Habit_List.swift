//
//  Habit_List.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/3/25.
//

import SwiftUI
import SwiftData

struct Habit_List: View {
    var body: some View {
        VStack {
            List(Habit.sampleData) { habit in
                Text(habit.name)
                    .font(.system(size: 20))
            }
        }
    }
}

#Preview {
    Habit_List()
}
