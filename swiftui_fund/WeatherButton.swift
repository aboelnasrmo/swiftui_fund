//
//  WeatherButton.swift
//  swiftui_fund
//
//  Created by Mohammad Aboelnasr on 29/12/2023.
//
import SwiftUI

struct WeatherButton: View {
    var buttonText:String
    var textColor:Color
    var backGroundColor:Color
    var body: some View {
        
            Text(buttonText)
                .frame(width: 280,height: 50)
                .background(backGroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20,weight: .bold,design: .default))
                .cornerRadius(20)
        
    }
}
