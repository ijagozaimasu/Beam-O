//
//  QuestionsTwo.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct QuestionsTwo: View {
    let VPW = UIScreen.main.bounds.size.width
    let VPH = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack (spacing: 40) {
                    TextHeadlineTwo(text: "What’s your gender?")
                        .foregroundColor(.fontcolortwo)
                    VStack (spacing: 16) {
                        ButtonComponentOne(label: "Male")
                        ButtonComponentOne(label: "Female")
                    }
                }
                Spacer()
                ButtonComponentTwo(label: "NEXT")
                
            }
            .padding(20)
        }
        .background(Image("BackgroundPage")
            .resizable()
            .ignoresSafeArea()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: VPW, height: VPH))
    }
}

#Preview {
    QuestionsTwo()
}
