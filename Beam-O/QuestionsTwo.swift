//
//  QuestionsTwo.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct QuestionsTwo: View {
    @Environment (Application.self) private var app
    
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
                        ButtonComponentOne(label: "Male", active: app.gender == .male) {
                            app.gender = .male
                        }
                        ButtonComponentOne(label: "Female", active: app.gender == .female) {
                            app.gender = .female
                        }
                    }
                }
                Spacer()
                ButtonComponentTwo(label: "NEXT") {
                    app.path.append(2)
                }
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
