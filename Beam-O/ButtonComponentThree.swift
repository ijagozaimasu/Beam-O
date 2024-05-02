//
//  ButtonComponentThree.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 02/05/24.
//

import SwiftUI

struct ButtonComponentThree: View {
    let label: String
    let labeltwo: String
    var body: some View {
        Button {
            //disini nanti tulis fungsi
        } label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .containerRelativeFrame(.vertical, count: 8, span: 1, spacing: 0)
                    .overlay(
                        VStack (spacing: 12){
                            Text(label)
                                .foregroundStyle(.fontcolortwo)
                                .bold()
                                .font(.system(size: 18))
                            Text(labeltwo)
                                .foregroundStyle(.gray)
                                .font(.system(size: 14))
                            
                        }
                    )
                    .shadow(color: .shadowcolorone, radius: 10)
        }
        
    }
}

#Preview {
    ButtonComponentThree(label: "Hello", labeltwo: "Ehem")
}
