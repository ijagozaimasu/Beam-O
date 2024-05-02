//
//  QuestionsThree.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct QuestionsThree: View {
    let VPW = UIScreen.main.bounds.size.width
    let VPH = UIScreen.main.bounds.size.height
    
    @State private var weight = ""
    @State private var height = ""
    @State private var age = ""
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            VStack {
                Spacer()
                VStack (spacing: 40) {
                    TextHeadlineTwo(text: "Fill out the data")
                        .foregroundColor(.fontcolortwo)
                    VStack (spacing: 24) {
                        TextFieldOne(data: $weight, placeholder: "Enter weight (kg)")
                            .keyboardType(.numberPad)
                        TextFieldOne(data: $height, placeholder: "Enter height (cm)")
                            .keyboardType(.numberPad)
                        TextFieldOne(data: $age, placeholder: "Enter age (years)")
                            .keyboardType(.numberPad)
                    }
                }
                Spacer()
                ButtonComponentTwo(label: "NEXT")
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
    QuestionsThree()
}
