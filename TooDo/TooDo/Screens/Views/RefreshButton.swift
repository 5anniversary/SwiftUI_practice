//
//  RefreshButton.swift
//  TooDo
//
//  Created by 오준현 on 2022/02/05.
//

import SwiftUI

struct RefreshButton: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: { }) {
                    Image(systemName: "arrow.counterclockwise")
                        .frame(width: 50, height: 50, alignment: .center)
                        .background(Color.white)
                }
                .background(Color.blue)
                .cornerRadius(25)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 20))
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 3,
                    x: 3,
                    y: 3
                )
            }
        }
    }
}
