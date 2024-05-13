//
//  QuestionsFour.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct QuestionsFour: View {
    @Environment (Application.self) private var app
    
    let VPW = UIScreen.main.bounds.size.width
    let VPH = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack (alignment: .bottomLeading) {
            ScrollView{
                VStack {
                    Spacer()
                    VStack (spacing: 40) {
                        TextHeadlineTwo(text: "Choose the most suitable activity level")
                            .foregroundColor(.fontcolortwo)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        VStack (spacing: 16) {
                            ButtonComponentThree(
                                label: "Sedentary",
                                labeltwo: "Little to no exercise",
                                active: app.activity == .sedentary
                            ){
                                app.activity = .sedentary
                            }
                            ButtonComponentThree(
                                label: "Lightly Active",
                                labeltwo: "Light exercise 1 to 3 days per week",
                                active:  app.activity == .light
                            ){
                                app.activity = .light
                            }
                            ButtonComponentThree(
                                label: "Moderately Active",
                                labeltwo: "Moderate exercise 6 to 7 days per week",
                                active: app.activity == .moderate
                            ){
                                app.activity = .moderate
                            }
                            ButtonComponentThree(
                                label: "Very Active",
                                labeltwo: "Hard exercise every day, or exercising twice a day",
                                active: app.activity == .very
                            ){
                                app.activity = .very
                            }
                            ButtonComponentThree(
                                label: "Extra Active",
                                labeltwo: "Very hard exercise, training, or a physical job",
                                active: app.activity == .extra
                            ){
                                app.activity = .extra
                            }
                        }
                    }
                    Spacer()
                }
            }
            .padding(20)
            //            .frame(width: VPW, height: VPH)
            
            VStack {
                ButtonComponentTwo(label: "CALCULATE") {
                    app.path.append(4)
                }
            }
            .padding(20)
        }
        .background(
            Image("BackgroundPage")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: VPW, height: VPH)
        )
    }
}

#Preview {
    QuestionsFour()
}
