//
//  SampleData.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/3/25.
//

import Foundation
import SwiftData

@MainActor
class SampleData {
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
    
    private init() {
        let schema = Schema([
            Friend.self,
            Habit.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            
            insertSampleData()
            
            try context.save()
            
        } catch {
            fatalError("Could not build model for the container \(error)")
        }
    }
    
    func insertSampleData() {
        for friend in Friend.sampleData {
            context.insert(friend)
        }
        for habit in Habit.sampleData {
            context.insert(habit)
        }
    }
    
    
}
