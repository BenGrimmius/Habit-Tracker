//
//  Friend.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/3/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var habits: [Habit]
    
    init(name: String, habits: [Habit]) {
        self.name = name
        self.habits = habits
    }
    
    static var sampleData: [Friend] {
        return [
            .init(name: "Ben", habits: []),
            .init(name: "John", habits: []),
            .init(name: "Mary", habits: []),
            .init(name: "David", habits: []),
            .init(name: "Thomas", habits: []),
        ]
    }
    
    
}
