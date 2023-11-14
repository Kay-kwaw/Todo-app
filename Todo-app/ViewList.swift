//
//  ViewList.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        @State var item:  [String] = [
            "Initial work",
            "This is the second!",
            "This is the third",
        ]
        List{
            ForEach(item, id: \.self) {
                item in  ListRowView(title: item)
            }
            .listStyle(PlainListStyle())
          
        }
        .navigationTitle("Daily Activities🗒️")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View{
        NavigationView{
            ListView(
            )
        }
    }
}


