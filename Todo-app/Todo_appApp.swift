//
//  Todo_appApp.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

@main
struct Todo_appApp: App {
    
     @StateObject var listViewModel: ListViewModels = ListViewModels()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
        }
    }
}
