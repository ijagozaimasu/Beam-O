//
//  TextHeadlineTwo.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 27/04/24.
//

import SwiftUI

struct TextHeadlineTwo: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.custom("PlayfairDisplay-Medium", size: 30))
    }
}

#Preview {
    TextHeadlineTwo(text: "Hello bitch")
}
