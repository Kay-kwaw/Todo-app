//
//  AddView.swift
//  Todo-app
//
//  Created by kwaw-kumi on 15/11/2023.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModels
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
            Button(action: saveButtonPressed, label: {
                
                    Text("SAVE!               ")
                        .font(.headline)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                
            }
        )}
                   
        .navigationTitle("Add an item✒️")
        
    }
    func saveButtonPressed () {
        listViewModel.addItem(title: textFieldText) //Once the button is pressed we call on the listViewModel
        presentationMode.wrappedValue.dismiss()
        //This presentMode is an inbuilt function that nevigates back to the listviewmodel page.
        //presentationMode property provides a way to control the presentation of views within a navigation stack or sheet.
        
    }
    //Now with this function we want to append the add item to the already listed listViewdate models once the hit button in onpressed
}


struct AddView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModels())
    }
}
