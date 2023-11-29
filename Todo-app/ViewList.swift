//
//  ViewList.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel : ListViewModels
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty
            {
                NoItemView()
            } else {
                List{
                    ForEach(listViewModel.items) {
                        item in ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
            }
        }
        .navigationTitle("Daily Activities🗒️")
        .navigationBarItems(
            leading: EditButton(),
                            trailing:
//                                NavigationLink("Add", destination: AddView())
                            
        )
        .toolbar {
                            ToolbarItemGroup(placement: .bottomBar) {
                                Spacer()
                                
                                Button(action: {
                                    // Action for the button
//                                    self.showAlert.toggle()
                                }) {
                                    Image(systemName: "plus")
                                        NavigationLink()
                                        Text("Add")
                                }
//                                .alert(isPresented: $showAlert) {
//                                    Alert(title: Text("Alert"), message: Text("Button tapped!"), dismissButton: .default(Text("OK")))
//                                }
                                
                                Spacer()
                            }
                        }
                                    
                                    
        }
    }
    
    
    
    


struct ListView_Previews: PreviewProvider {
    static var previews: some View{
        NavigationView{
            ListView(
            )
        }
        .environmentObject(ListViewModels())
    }
}


