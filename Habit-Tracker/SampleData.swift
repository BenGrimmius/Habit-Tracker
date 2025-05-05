//
//  SampleData.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/3/25.
//

import Foundation
import SwiftData

@MainActor
struct SampleData {
    static let shared = SampleData()
    
    let modelContainer: ModelContainer
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    var friend: Friend {
        Friend.sampleData.first!
    }
    
    var habit: Habit {
        Habit.sampleData.first!
    }
    
}
