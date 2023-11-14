//
//  ContentView.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var navigateToAnotherScreen = false
    var body: some View {
        NavigationView{
            VStack {            
                HStack{
                     Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.orange)
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                    .navigationTitle("Planoo")                }
                Text("Get ready to \nsupercharge \nyour goal- \nsetting and \nplanning with\nPlanoo! ")
                    .font(.largeTitle)
                    .padding(50)
                Button(action: {
                        }) {
                            NavigationLink(destination: ListView()){
                                Text("Get Started!               ")
                                    .font(.headline)
                                    .padding()
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                            }
                           
                            
                        }
                
            }
            
            
            
        }
       
       
        
    }
}

#Preview {
    ContentView()
        .previewDevice("iphone 14")
}
