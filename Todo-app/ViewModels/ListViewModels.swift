//
//  ListViewModels.swift
//  Todo-app
//
//  Created by kwaw-kumi on 19/11/2023.
//

import Foundation
 
class ListViewModels: ObservableObject {
    //NB we cant use @State in classes instead we use at poblished
    @Published var items: [ItemModel] = []
    
    init () {
        getItems()
    }
    
    func getItems() {
        let newItems =  [
            ItemModel(title: "Initial Activity!", isCompleted: false),
            ItemModel(title: "Initial Activity!", isCompleted: true),
            ItemModel(title: "Initial Activity!", isCompleted: false)
            
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    
    
}
