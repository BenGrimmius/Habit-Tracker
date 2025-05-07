//
//  Friend_List.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/3/25.
//

import SwiftUI
import SwiftData

struct Friend_List: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context: ModelContext
    
    var body: some View {
            Group {
                if !friends.isEmpty {
                    List {
                        ForEach(friends) { friend in
                            Text(friend.name)
                        }
                    }
                }
            }
            .navigationTitle("Friends")
        }
}

#Preview {
    Friend_List()
        .modelContainer(SampleData.shared.modelContainer)
}
