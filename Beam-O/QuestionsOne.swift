//
//  QuestionsOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 30/04/24.
//

import SwiftUI

struct QuestionsOne: View {
    let VPW = UIScreen.main.bounds.size.width
    let VPH = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack (spacing: 40) {
                    TextHeadlineTwo(text: "What’s your goal?")
                        .foregroundColor(.fontcolortwo)
                    VStack (spacing: 16) {
                        ButtonComponentOne(label: "Lose Weight")
                        ButtonComponentOne(label: "Maintain Weight")
                        ButtonComponentOne(label: "Gain Weight")
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
            .frame(width: VPW, height: VPH)
        )
    }
}

#Preview {
    QuestionsOne()
}
