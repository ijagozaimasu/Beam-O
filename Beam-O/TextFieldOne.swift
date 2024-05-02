//
//  TextFieldOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 01/05/24.
//

import SwiftUI

struct TextFieldOneStyle: TextFieldStyle {
    var isEditing: Bool
    
    init(isEditing: Bool) {
        self.isEditing = isEditing
    }
    
    func _body(configuration: TextField<_Label>) -> some View {
        ZStack {
            configuration
                .padding(0)
                .textFieldStyle(PlainTextFieldStyle())
                .foregroundStyle(.fontcolortwo)
        }
        .padding(EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10))
        .background(Rectangle().frame(width: nil, height:3, alignment: .bottom).foregroundColor(isEditing ? .maincolor : .inactivecolor), alignment: .bottom)
    }
}

struct TextFieldOne: View {
    @Binding var data: String
    
    @FocusState private var isEditing: Bool
    
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $data)
            .focused($isEditing)
            .textFieldStyle(TextFieldOneStyle(isEditing: isEditing))
    }
}
