//
//  ContentView.swift
//  swiftuifundmentals
//
//  Created by Mohammad Aboelnasr on 18/12/2023.
//

import SwiftUI

struct ContentView: View {
    let states = ["cloud.sun.fill", "cloud.sun.rain.fill", "cloud.sun.bolt.fill", "cloud", "sun.max.fill", "wind", "snow", "tornado", "cloud.sun.bolt.fill"]
    var body: some View {
        
        ZStack() {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
//         CardView()
            HStack {
                ForEach(states, id: \.self) { state in
                    CicularView(content: state)
                }
            }
            

            
        }
        
    }
}

struct CardView: View {
    var body: some View{
    let myCardView =  VStack() {
            Text("Cairo")
                .font(.system(size: 50))
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 50)
            VStack() {
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
            }
            Text("32°")
                .font(.system(size: 70))
                .foregroundColor(.white)
                .padding(.top, 50)
            VStack(){
                Text("Tuesday, December 18")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.top, 50)
            }
       
            Spacer()
            
        }
        myCardView
            .padding(.all, 20)
           
    }
}

struct CicularView: View {
    let content:String
   @State var isShowing:Bool = false
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
            if isShowing{
                Image(systemName: content)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    
            }else
            {
                Image(systemName: "questionmark")
            }
               
        }
        .onTapGesture {
            isShowing.toggle()
        }
    }
}
#Preview {
    ContentView()
}
