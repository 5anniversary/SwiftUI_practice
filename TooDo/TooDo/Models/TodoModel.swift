//
//  TodoModel.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import Foundation
import Combine

final class TodoModel: ObservableObject {
    @Published var contents: [Todo] = [
        Todo(title: "todo first", isDone: true, tag: [], dueDate: Date()),
        Todo(title: "todo second", isDone: false, tag: [], dueDate: Date()),
        Todo(title: "todo third", isDone: true, tag: [], dueDate: Date()),
        Todo(title: "todo fourth", isDone: false, tag: [], dueDate: Date()),
        Todo(title: "todo fifth", isDone: true, tag: [], dueDate: Date())
    ]

    init() { }

    func togleContent(contentID: UUID) {
        contents.enumerated().forEach { index, item in
            if item.id == contentID {
                contents[index].isDone.toggle()
            }
        }
    }
}

struct Todo {
    let id: UUID = UUID()

    var title: String
    var isDone: Bool = true

    var tag: [String] = []
    var dueDate: Date = Date()
}
