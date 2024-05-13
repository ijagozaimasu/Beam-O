//
//  QuestionsOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 30/04/24.
//

import SwiftUI

struct QuestionsOne: View {
    @Environment (Application.self) private var app
    
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
                        ButtonComponentOne(label: "Lose Weight", active: app.goal == .lose) {
                            app.goal = .lose
                        }
                        ButtonComponentOne(label: "Maintain Weight", active: app.goal == .maintain) {
                            app.goal = .maintain
                        }
                        ButtonComponentOne(label: "Gain Weight", active: app.goal == .gain) {
                            app.goal = .gain
                        }
                    }
                }
                Spacer()
                ButtonComponentTwo(label: "NEXT") {
                    app.path.append(1)
                }
                
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
