//
//  ContentView.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var navigateToAnotherScreen = false
    @EnvironmentObject var listViewModel : ListViewModels
    var body: some View {
        NavigationView{
            VStack {            
                HStack{
                     Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.orange)
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.accentColor)
                    .navigationTitle("Planoo")
                   
                }
                Text("Get ready to \nsupercharge \nyour goal- \nsetting and \nplanning with\nPlanoo! ")
                    .font(.largeTitle)
                    .padding(50)
                            NavigationLink(
                                destination: ListView(), label: {
                                    Text("Get Started!               ")
                                        .font(.headline)
                                        .padding()
                                        .background(Color.accentColor)
                                        .foregroundColor(.color1)
                                        .cornerRadius(15)
//
                                }
                                
                               
                            
                           
                            
                        )
                
            }
            
            
            
        }
       
       
        
    }
}


struct ContentView_preview: PreviewProvider{
    static var previews: some View{
        NavigationView{
            ContentView()
        }
        .environmentObject(ListViewModels())
    }
}
