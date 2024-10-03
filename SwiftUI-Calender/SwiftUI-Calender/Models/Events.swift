//
//  Events.swift
//  SwiftUI-Calender
//
//  Created by Sachin Daingade on 28/09/24.
//

import Foundation

@MainActor
class Events: ObservableObject {
    @Published var events = [Event]()
    @Published var isPreview: Bool
    
    init(isPreview: Bool = false) {
        self.isPreview = isPreview
        if isPreview {
            fetchData()
        }
    }
    
   private func fetchData() {
        events = Event.sampleEvents
    }
    
}
