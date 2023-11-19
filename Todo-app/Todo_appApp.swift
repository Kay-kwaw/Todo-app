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
            .environmentObject(listViewModel)
            //EnvironmentObject is a way to share data across views in your SwiftUI application. It allows you to pass an object down the view hierarchy, making it accessible to any view within that hierarchy without the need to explicitly pass it through each intermediate view.
        }
    }
}
