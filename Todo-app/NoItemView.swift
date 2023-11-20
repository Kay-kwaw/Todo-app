//
//  NoItemView.swift
//  Todo-app
//
//  Created by kwaw-kumi on 20/11/2023.
//

import SwiftUI


struct NoItemView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 10) {
                Text("There are no Items!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you \n click the add button and add a\n bunch of items to your todo list")
                NavigationLink(destination: AddView(), label: {
                    Text("Add Something ✍🏿")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.orange)
                        .cornerRadius(10)
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemView_Preview: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemView()
                .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
        }
    }
}
