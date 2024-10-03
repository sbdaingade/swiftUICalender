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
    var note: String
    
    static var sampleEvents : [Event] {
        return [
            Event(id: UUID().uuidString, name: "Holiday", date: Date().diff(numDays: -1), note: "Y"),
            Event(id: UUID().uuidString, name: "Weekday", date: Date().diff(numDays: 2), note: "Y")
        ]
    }
}
