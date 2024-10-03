//
//  EventsCalendarView.swift
//  SwiftUI-Calender
//
//  Created by Sachin Daingade on 28/09/24.
//

import SwiftUI

struct EventsCalendarView: View {
    @EnvironmentObject var eventStore: Events
    var body: some View {
        VStack {
            ScrollView {
                CalenderView(eventStore: eventStore, interval: DateInterval(start: .distantPast, end: .distantFuture))
            }
        }
        .navigationTitle("Calendar")
    }
}

#Preview {
    EventsCalendarView().environmentObject(Events(isPreview: true))
}
