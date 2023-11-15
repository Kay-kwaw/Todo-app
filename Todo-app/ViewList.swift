//
//  ViewList.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        @State var items:  [ItemModel] = [
            ItemModel(title: "Initial Activity!", isCompleted: false),
            ItemModel(title: "Initial Activity!", isCompleted: true),
            ItemModel(title: "Initial Activity!", isCompleted: false)
            
        ]
        List{
            ForEach(items) {
                item in ListRowView(item: item)
            }
            .onDelete(perform: { indexSet in
                items.remove(atOffsets: indexSet)
            })
        }
        .navigationTitle("Daily Activities🗒️")
        .navigationBarItems(
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
    }
    
    
    func deleteItem(indexSet: IndexSet){
       
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


