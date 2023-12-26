//
//  grediantbootcamp.swift
//  swiftui_fund
//
//  Created by Mohammad Aboelnasr on 26/12/2023.
//

import SwiftUI

struct grediantbootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                
//                Color.red
                
                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.blue]), startPoint: .leading, endPoint: .trailing)
            )
            .frame(width:300,height: 200)
    }
}

#Preview {
    grediantbootcamp()
}
