//
//  HomeEmpty.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 27/04/24.
//

import SwiftUI

struct HomeEmpty: View {
    @Environment (Application.self) private var app
    
    let VPW = UIScreen.main.bounds.size.width
    let VPH = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack (alignment:.center) {
                    Image("catty")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 273)
                    TextHeadlineTwo(text: "Understand how many calories you expend")
                        .foregroundColor(.fontcolortwo)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                ButtonComponentTwo(label: "GET STARTED") {
                    app.path.append(0)
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
    HomeEmpty()
}
