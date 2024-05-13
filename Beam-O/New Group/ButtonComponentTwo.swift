//
//  ButtonComponentTwo.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct ButtonComponentTwo: View {
    let label: String
    
    let action: (() -> Void)?
    
    var body: some View {
        Button {
            if let action {
                action()
            }
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
    ButtonComponentTwo(label: "hello") {
        print("test")
    }
}
