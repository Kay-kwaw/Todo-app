//
//  itemModel.swift
//  Todo-app
//
//  Created by kwaw-kumi on 15/11/2023.
//

import SwiftUI
//To use this model is more convinient to use identifible to conform to the forloop, now the itemmodel will conform to the identifiable
//In SwiftUI, the Identifiable protocol is used to provide a stable identifier for data in a collection. The protocol requires that conforming types have a property called id that can be used to uniquely identify each instance. This is particularly useful when working with collections of data, such as in lists or tables
//n SwiftUI, the Codable protocol is often used in conjunction with JSONEncoder and JSONDecoder to serialize and deserialize data. Codable makes it easy to convert Swift types to and from external representations, such as JSON.
//The Codable protocol simplifies the process of working with JSON in Swift.

struct ItemModel: Identifiable, Codable {
    let title: String
    let isCompleted: Bool
    let id: String /*= UUID().uuidString*/ //UUID is a fucntion that generated random iD, Strings are more flexible
    
    //For this instance we want to ensure that once an id is created we dont want to create again
    //We have two options here for this function, first we can initialize itemmodel with an id or it can be generated for us
 
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion () -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}




