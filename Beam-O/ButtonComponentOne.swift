//
//  ButtonComponentOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct ButtonComponentOne: View {
    let label: String
    var body: some View {
        Button {
            //disini nanti tulis fungsi
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(height:80)
                .overlay(
                    Text(label)
                        .foregroundStyle(.fontcolortwo)
                        .bold()
                )
                .shadow(color: .shadowcolorone, radius: 10)
        }

    }
}

#Preview {
    ButtonComponentOne(label: "Weight")
}
