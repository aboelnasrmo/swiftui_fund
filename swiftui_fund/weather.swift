//
//  weather.swift
//  swiftui_fund
//
//  Created by Mohammad Aboelnasr on 29/12/2023.
//

import SwiftUI

struct weather: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cairo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                .padding()
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .font(.largeTitle)
                        .frame(width: 100, height: 100)
                        .fontWeight(.bold)
                        .padding()
                    .cornerRadius(10)
                    
                    
                    Text("22°")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
              Spacer()
                ScrollView(.horizontal) {
                    HStack(spacing:20) {
                        
                        
                        WeatherDayView(day: "Sun", imageName: "cloud.sun.fill", temp: 22)
                        WeatherDayView(day: "Mon", imageName: "cloud.sun.fill", temp: 22)
                        WeatherDayView(day: "Tue", imageName: "cloud.sun.fill", temp: 22)
                        WeatherDayView(day: "Wed", imageName: "cloud.sun.fill", temp: 22)
                        WeatherDayView(day: "Thu", imageName: "cloud.sun.fill", temp: 22)
                        WeatherDayView(day: "Fri", imageName: "cloud.sun.fill", temp: 22)
                        WeatherDayView(day: "Sat", imageName: "cloud.sun.fill", temp: 22)
                        
                      
                  
                    
                       
                        
                    }
                }
                Spacer()
            }
           
     
            
            
        }
    }
}

#Preview {
    weather()
}

struct WeatherDayView: View {
    var day:String
    var imageName:String
    var temp:Int
    var body: some View {
        VStack {
            Text(day)
                .font(.body)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.white)
                .cornerRadius(10)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .font(.largeTitle)
                .frame(width: 30, height: 30)
                .fontWeight(.bold)
            Text("\(temp)")
                .font(.body)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.white)
            
        }
    }
}
