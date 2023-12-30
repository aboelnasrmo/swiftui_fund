//
//  weather.swift
//  swiftui_fund
//
//  Created by Mohammad Aboelnasr on 29/12/2023.
//

import SwiftUI

struct weather: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackgroundView(topColor: isNight ? .black : .blue,  bottomColor:isNight ? .gray : Color("lightBlue"))
            VStack {
               CityTextView(cityName: "Cairo")
               MainCityWeatherView(weatherData: "cloud.sun.fill", temp: 20)
                
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
                .padding(.horizontal)
                
                
                Spacer()
                
                Button{
                    print("tapped")
                    isNight = !isNight
                }label: {
                    WeatherButton(buttonText: "Change Day Time", textColor: .blue, backGroundColor: .white)
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

struct BackgroundView: View {
    var topColor:Color
    var bottomColor:Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName:String
    var body: some View {
        Text(cityName)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
    }
}

struct MainCityWeatherView: View {
    var weatherData:String
    var temp:Int
    var body: some View {
        VStack {
            Image(systemName: weatherData)
                .renderingMode(.original)
                .resizable()
                .font(.largeTitle)
                .frame(width: 100, height: 100)
                .fontWeight(.bold)
                .padding()
                .cornerRadius(10)
            
            
            Text("\(temp)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding(.bottom,40)
    }
}


