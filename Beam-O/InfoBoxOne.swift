//
//  InfoBoxOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 02/05/24.
//

import SwiftUI

struct InfoBoxOne: View {
    let label: String
    let labeltwo: String
    let labelthree: String
    let labelsmall: String
    let VPW = UIScreen.main.bounds.size.width
    
    var body: some View {
        VStack (alignment: .leading, spacing: 18){
            Text(label)
                .foregroundStyle(.fontcolortwo)
                .bold()
                .font(.system(size: 18))
            VStack (alignment: .leading) {
                HStack(alignment: .lastTextBaseline, spacing: 0) {
                    Text(labeltwo)
                        .foregroundStyle(.maincolor)
                        .bold()
                        .font(.system(size: 40))
                    Text(labelsmall)
                        .foregroundStyle(.maincolor)
                        .bold()
                        .font(.system(size: 20))
                    Spacer()
                }
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Text(labelthree)
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
            }
        }
        .padding(10)
        .frame(width: (VPW - 50) / 2)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .shadow(color: .shadowcolorone, radius: 10)
        )
       
    }
}

#Preview {
    InfoBoxOne(label: "Weight to lose", labeltwo: "14", labelthree: "To reach your ideal weight", labelsmall: "kg")
}
