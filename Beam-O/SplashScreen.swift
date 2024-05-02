//
//  SplashScreen.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 27/04/24.
//

import SwiftUI

struct SplashScreen: View {
    let VPW = UIScreen.main.bounds.size.width
    let VPH = UIScreen.main.bounds.size.height
    
    var body: some View {
        ZStack {
            TextHeadlineOne(text: "Beam-O")
                .foregroundColor(.fontcolorone)
        }
        .background(Image("BackgroundSplash")
            .resizable()
            .ignoresSafeArea()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: VPW, height: VPH)
        )
    }
       
}


#Preview {
    SplashScreen()
}
