//
//  circle.swift
//  swiftui_fund
//
//  Created by Mohammad Aboelnasr on 25/12/2023.
//

import SwiftUI

struct circle: View {
    var body: some View {
       Circle()
           
        .trim(from: 0, to: 0.7)
//        .stroke(Color.blue, lineWidth: 20)
        .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, style: StrokeStyle(
            lineWidth: 20,
            lineCap: .round,
            lineJoin: .round,
            dash: [30]
        ))
        .frame(width: 200,height: 200)
        
            }
}

#Preview {
    circle()
}

