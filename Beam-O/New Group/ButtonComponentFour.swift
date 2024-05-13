//
//  ButtonComponentFour.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 02/05/24.
//

import SwiftUI

struct ButtonComponentFour: View {
    let label: String
    var body: some View {
        Button {
            //disini nanti tulis fungsi
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(
                    Color(.maincolor),
                    lineWidth: 2
                )
                .frame(height:50)
                .overlay(
                    Text(label)
                        .foregroundStyle(.maincolor)
                        .bold()
                )
        }
    }
}

#Preview {
    ButtonComponentFour(label: "hello")
}
