//
//  Habit_Model.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/2/25.
//

import Foundation
import SwiftData

@Model
class Habit {
    var name: String
    var completedToday: Bool
    var dateCreated: Date
    
    init(name: String, completedToday: Bool, dateCreated: Date) {
        self.name = name
        self.completedToday = completedToday
        self.dateCreated = dateCreated
    }
    
    static let sampleData: [Habit] = [
        .init(name: "Drink water", completedToday: true, dateCreated: Date()),
        .init(name: "Meditate", completedToday: false, dateCreated: Date()),
        .init(name: "Read", completedToday: true, dateCreated: Date()),
    ]
}


