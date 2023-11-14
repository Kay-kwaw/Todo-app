//
//  AddView.swift
//  Todo-app
//
//  Created by kwaw-kumi on 15/11/2023.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here....", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding()
            }
            Button(action: {
            }) {
                
                    Text("SAVE!               ")
                        .font(.headline)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                
            }
        }
        .navigationTitle("Add an item✒️")
        
    }
}


struct AddView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            AddView()
        }
    }
}
