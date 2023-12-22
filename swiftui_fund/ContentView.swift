//
//  ContentView.swift
//  swiftuifundmentals
//
//  Created by Mohammad Aboelnasr on 18/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
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

            
        }
        
    }
}

#Preview {
    ContentView()
}
