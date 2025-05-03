//
//  Friend_List.swift
//  Habit-Tracker
//
//  Created by Ben Grimmius on 5/3/25.
//

import SwiftUI

struct Friend_List: View {
    var body: some View {
        VStack {
            List(Friend.sampleData) { friend in
                Text(friend.name)
            }
        }
    }
}

#Preview {
    Friend_List()
}
