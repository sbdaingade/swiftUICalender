//
//  Event.swift
//  SwiftUI-Calender
//
//  Created by Sachin Daingade on 28/09/24.
//
import Foundation

struct Event: Identifiable {
    var id: String
    var name: String
    var date: Date
    var icon: String
    
    static var sampleEvents : [Event] {
        return [
            Event(id: UUID().uuidString, name: "Holiday", date: Date().diff(numDays: -1), icon: "😎"),
            Event(id: UUID().uuidString, name: "Weekday", date: Date().diff(numDays: 2), icon: "🥳"),
            Event(id: UUID().uuidString, name: "Weekday", date: Date().diff(numDays: 3), icon: "😇"),
            Event(id: UUID().uuidString, name: "Weekday", date: Date().diff(numDays: 4), icon: "🎃"),
            Event(id: UUID().uuidString, name: "Weekday", date: Date().diff(numDays: 0), icon: "🦁"),
            Event(id: UUID().uuidString, name: "Weekday", date: Date().diff(numDays: -2), icon: "🐥")

        ]
    }
}
