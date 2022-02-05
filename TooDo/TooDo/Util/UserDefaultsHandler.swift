//
//  UserDefaultsHandler.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import UIKit

@propertyWrapper
struct UserDefault<T> {

    let key: String
    let defaultValue: T
    let storage: UserDefaults

    var wrappedValue: T {
        get { storage.object(forKey: key) as? T ?? defaultValue }
        set { storage.set(newValue, forKey: key) }
    }

    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
        storage = .standard
    }
}

struct UserDefaultsHandler {

    @UserDefault(key: "FontSize", defaultValue: 16)
    static var fontSize: CGFloat
}
