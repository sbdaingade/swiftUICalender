//
//  CalenderView.swift
//  SwiftUI-Calender
//
//  Created by Sachin Daingade on 28/09/24.
//

import SwiftUI

struct CalenderView: UIViewRepresentable {
    let interval: DateInterval
    
    func makeUIView(context: Context) -> UICalendarView {
        let view = UICalendarView()
        view.calendar = Calendar(identifier: .gregorian)
        view.availableDateRange = interval
        return view
    }
    
    func updateUIView(_ uiView: UICalendarView, context: Context) {
        
    }
    
   // typealias UIViewType = UICalendarView
    
    
}
