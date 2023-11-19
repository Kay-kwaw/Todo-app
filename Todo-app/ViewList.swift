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
            .onMove(perform: moveItem)
        }
        .navigationTitle("Daily Activities🗒️")
        .navigationBarItems(
            leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
                            
        )
    }
    
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
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


