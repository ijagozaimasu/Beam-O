//
//  SummaryOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 02/05/24.
//

import SwiftUI

struct SummaryOne: View {
    let VPW = UIScreen.main.bounds.size.width
    let VPH = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    TextHeadlineTwo(text: "Your average calorie expenditure")
                        .foregroundColor(.fontcolortwo)
                        .multilineTextAlignment(.center)
                    VStack {
                        Text("2344")
                            .foregroundStyle(.maincolor)
                            .bold()
                            .font(.system(size: 50))
                        Text("calories")
                            .foregroundStyle(.maincolor)
                            .bold()
                            .font(.system(size: 20))
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 40, trailing: 0))
                }
                VStack {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        InfoBoxOne(
                            label: "Weight to lose",
                            labeltwo: "14",
                            labelthree: "to reach your ideal bodyweight trst",
                            labelsmall: "kg"
                        )
                        InfoBoxOne(
                            label: "Suggested intake",
                            labeltwo: "2000",
                            labelthree: "Best approximation for stable weight loss",
                            labelsmall: "cal"
                        )
                        InfoBoxOne(
                            label: "Your BMR are",
                            labeltwo: "1600",
                            labelthree: "Lower than average, workout may raise it",
                            labelsmall: "cal"
                        )
                        InfoBoxOne(
                            label: "Your activity level",
                            labeltwo: "Good",
                            labelthree: "Keep it up! You’re doing great already",
                            labelsmall: ""
                        )
                    }
                    HStack (spacing: 8) {
                        
                    }
                    HStack (spacing: 8) {
                        
                    }
                }
                Spacer()
                ButtonComponentTwo(label: "SAVE AS PICTURE") {
                    print("test")
                }
                ButtonComponentFour(label: "HOME")
                
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
    SummaryOne()
}
