//
//  TodoItemView.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import SwiftUI

struct TodoItemView: View {
    var todo: Todo

    init(_ todoItem: Todo) {
        self.todo = todoItem
    }

    var body: some View {
        HStack(content: {
            Text(todo.title)
                .font(
                    .system(
                        size: UserDefaultsHandler.fontSize,
                        weight: .bold,
                        design: .default
                    )
                )
                .if(todo.isDone, transform: {
                    $0.strikethrough()
                })
            Spacer()
            Circle()
                .if(todo.isDone) { view in
                    view.foregroundColor(.blue)
                }
                .frame(width: 30, height: 30, alignment: .trailing)
        })
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: 60,
            alignment: .leading
        )
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }

    func set() {
        print("asdasd", todo.id)
    }
}
