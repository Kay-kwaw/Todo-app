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
        .navigationTitle("Daily Activities🗒️")
        .navigationBarItems(
            leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
                            
        )
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


