//
//  TextHeadlineOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 27/04/24.
//

import SwiftUI

struct TextHeadlineOne: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.custom("PlayfairDisplay-Medium", size: 50))
    }
}

#Preview {
    TextHeadlineOne(text: "Hello")
}
