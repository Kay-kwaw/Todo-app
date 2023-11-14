//
//  ListRowView.swift
//  Todo-app
//
//  Created by kwaw-kumi on 14/11/2023.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text("Hi, Initial activity")
            Spacer()
        }
    }
}
struct ListRowView_Previews:  PreviewProvider{
    static var previews: some View{
        ListRowView(title: "Initial work")
    }
}
