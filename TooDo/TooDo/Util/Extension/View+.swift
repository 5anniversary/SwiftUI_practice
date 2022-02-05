//
//  View+.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import SwiftUI

extension View {
    @ViewBuilder func `if`<Content: View>(
        _ condition: Bool,
        transform: (Self) -> Content
    ) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
