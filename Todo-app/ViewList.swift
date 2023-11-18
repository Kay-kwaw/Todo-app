//
//  ViewList.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

struct ListView: View {
    @State var items:  [ItemModel] = [
        ItemModel(title: "Initial Activity!", isCompleted: false),
        ItemModel(title: "Initial Activity!", isCompleted: true),
        ItemModel(title: "Initial Activity!", isCompleted: false)
        
    ]
    var body: some View {
       
        List{
            ForEach(items) {
                item in ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
        }
        .navigationTitle("Daily Activities🗒️")
        .navigationBarItems(
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
    }
    
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View{
        NavigationView{
            ListView(
            )
        }
    }
}


