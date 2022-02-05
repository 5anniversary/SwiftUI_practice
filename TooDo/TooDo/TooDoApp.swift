//
//  TooDoApp.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import SwiftUI

@main
struct TooDoApp: App {
    @StateObject private var model = TodoModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
