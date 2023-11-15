//
//  itemModel.swift
//  Todo-app
//
//  Created by kwaw-kumi on 15/11/2023.
//

import SwiftUI
//To use this model is more convinient to use identifible to conform to the forloop, now the itemmodel will conform to the identifiable
//In SwiftUI, the Identifiable protocol is used to provide a stable identifier for data in a collection. The protocol requires that conforming types have a property called id that can be used to uniquely identify each instance. This is particularly useful when working with collections of data, such as in lists or tables

struct ItemModel: Identifiable {
    let title: String //UUID is a fucntion that generated random iD, Strings are more flexible
    let isCompleted: Bool
    let id: String = UUID().uuidString
}
