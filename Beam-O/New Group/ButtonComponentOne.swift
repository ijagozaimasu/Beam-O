//
//  ButtonComponentOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct ButtonComponentOne: View {
    let label: String
    let active: Bool
    let action: (() -> Void)?
    
    var body: some View {
        Button {
            if let action {
                action()
            }
            //disini nanti tulis fungsi
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .fill(active ? .secondarycolor : .white)
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
    ButtonComponentOne(label: "Weight", active: false) {
        print("test")
    }
}
