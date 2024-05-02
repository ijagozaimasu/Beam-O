//
//  ButtonComponentTwo.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct ButtonComponentTwo: View {
    let label: String
    var body: some View {
        Button {
            //disini nanti tulis fungsi
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.maincolor)
                .frame(height:50)
                .overlay(
                    Text(label)
                        .foregroundStyle(.fontcolorone)
                        .bold()
                )
        }
    }
}

#Preview {
    ButtonComponentTwo(label: "hello")
}
