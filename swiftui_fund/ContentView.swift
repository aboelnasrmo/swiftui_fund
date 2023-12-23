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
            
        
//           
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(states, id: \.self) { state in
//                        CicularView(content: state )
//                    }
//                }
//                .padding(.all, 20)
//            }
            VStack{
                CardView()
                CardViewData()
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
                .foregroundColor(.blue)
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
                .foregroundColor(.blue)
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

struct CardViewData: View {
    let states = [ "cloud.sun.bolt.fill", "wind", "snow","sun.min","sunrise.fill"]
  @State  var isClicked : Bool = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(states, id: \.self) { state in
                    Rectangle()
                        
                        .foregroundColor(.blue.opacity(0.5))
                        .frame(width: 150, height: 150)
          
            
                        .overlay(
                            
                            Image(
                                systemName: state)
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                        )
                        .cornerRadius(20)
                        .padding(.all, 20)
                      
                }
            }
            .onTapGesture {
                isClicked.toggle()
                print("is clicked")
            }
            .padding(.all, 20)
        }
    }
}
