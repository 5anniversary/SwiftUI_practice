//
//  ContentView.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var model: TodoModel

    var items: [Todo] {
        model.contents
    }

    var body: some View {
        NavigationView {
            ZStack {
                List(items, id: \.id) { item in
                    TodoItemView(item)
                }
                .navigationTitle("Todo")
                .navigationBarItems(
                    trailing: Image(systemName: "gearshape")
                )
                RefreshButton()
            }
        }
    }
}
