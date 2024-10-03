//
//  CalenderView.swift
//  SwiftUI-Calender
//
//  Created by Sachin Daingade on 28/09/24.
//

import SwiftUI
import Combine
struct CalenderView: UIViewRepresentable {
    
    
    
    @ObservedObject var eventStore: Events
    
    let interval: DateInterval
    
    func makeUIView(context: Context) -> UICalendarView {
        let view = UICalendarView()
        view.delegate = context.coordinator
        view.calendar = Calendar(identifier: .gregorian)
        view.availableDateRange = interval
        return view
    }
    
    func updateUIView(_ uiView: UICalendarView, context: Context) {
        
    }
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self, eventStore: _eventStore)
    }
    
    // typealias UIViewType = UICalendarView
    class Coordinator: NSObject, UICalendarViewDelegate {
        
        var parent: CalenderView
        @ObservedObject var eventStore: Events

        init(parent: CalenderView, eventStore: ObservedObject<Events>) {
            self.parent = parent
            self._eventStore = eventStore
        }
        @MainActor
        func calendarView(_ calenderView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
            let foundEvents = eventStore.events
                .filter{ $0.date.startOfDay == dateComponents.date?.startOfDay}
            
            if foundEvents.isEmpty { return nil }
            
            if foundEvents.count > 1 {
                return .image(UIImage(systemName: "doc.on.doc.fill"), color: .red, size: .large)
            }
            
            let singleEvent = foundEvents.first!
            
            return .customView {
                let icon = UILabel()
                icon.text = singleEvent.icon
                return icon
            }
            
        }
        
    }
    
}
