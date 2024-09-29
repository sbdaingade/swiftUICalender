//
//  EventsCalendarView.swift
//  SwiftUI-Calender
//
//  Created by Sachin Daingade on 28/09/24.
//

import SwiftUI

struct EventsCalendarView: View {
    var body: some View {
        VStack {
            ScrollView {
                CalenderView(interval: DateInterval(start: .distantPast, end: .distantFuture))
            }
        }
        .navigationTitle("Calendar")
    }
}

#Preview {
    EventsCalendarView()
}
