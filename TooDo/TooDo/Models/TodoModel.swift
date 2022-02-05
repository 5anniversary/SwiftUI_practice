//
//  TodoModel.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import Foundation

final class TodoModel: ObservableObject {
    var contents: [Todo] = [
        .init(title: "todo first", isDone: Bool.random(), tag: [], dueDate: Date()),
        .init(title: "todo second", isDone: Bool.random(), tag: [], dueDate: Date()),
        .init(title: "todo third", isDone: Bool.random(), tag: [], dueDate: Date()),
        .init(title: "todo fourth", isDone: Bool.random(), tag: [], dueDate: Date()),
        .init(title: "todo fifth", isDone: Bool.random(), tag: [], dueDate: Date())
    ]

    init() { }
}

struct Todo {
    let id: UUID = UUID()

    var title: String
    var isDone: Bool = true

    var tag: [String] = []
    var dueDate: Date = Date()
}
