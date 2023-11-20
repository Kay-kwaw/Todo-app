//
//  ListViewModels.swift
//  Todo-app
//
//  Created by kwaw-kumi on 19/11/2023.
//
// SwiftUI, you can use the @AppStorage property wrapper to easily work with UserDefaults. @AppStorage is a property wrapper that automatically reads from and writes to UserDefaults for you.

import Foundation
 
class ListViewModels: ObservableObject {
    //NB we cant use @State in classes instead we use at poblished
    @Published var items: [ItemModel] = []{
        didSet {
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init () {
        getItems()
    }
    
    func getItems() {
         
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = savedItems
        
        
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem) //This items.append just add the newly created item to the itemarray which it the itemModel.
    }
    
    func updateItem(item: ItemModel) {
        
//        if let index = items.firstIndex { (existingItem) -> Bool in
//            return existingItem.id == item.id
//        }{
//
//        }
        
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompletion()
        } // here the $0 is equal or the same as the existingItem
        
        
    }
    //Now with this fucntion we use index to find the item in the itemModels, so basically we use indexing
    
    
    func saveItems () {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.setValue(encodedData, forKey: itemsKey)
        }
    }
    
    
}
