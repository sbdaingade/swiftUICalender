//
//  SwiftUI_CalenderApp.swift
//  SwiftUI-Calender
//
//  Created by Sachin Daingade on 28/09/24.
//

import SwiftUI

@main
struct SwiftUI_CalenderApp: App {
    @StateObject var  myEvents = Events(isPreview: true)
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                EventsCalendarView().environmentObject(myEvents)
            }
        }
    }
}
