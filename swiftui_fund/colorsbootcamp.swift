//
//  colorsbootcamp.swift
//  swiftui_fund
//
//  Created by Mohammad Aboelnasr on 25/12/2023.
//

import SwiftUI

struct colorsbootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius:25)
            .fill(Color.blue)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    colorsbootcamp()
}
