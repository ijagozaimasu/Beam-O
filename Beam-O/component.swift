//
//  Home_empty.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 27/04/24.
//

import SwiftUI

struct component: View {
    @State private var selection = 0
       let options = ["Option 1", "Option 2", "Option 3"]

       var body: some View {
           Picker(selection: $selection, label: Text("Picker")) {
               ForEach(0..<options.count) { index in
                   Text(self.options[index])
                       .foregroundColor(.green) // Set text color to green
               }
           }
           .pickerStyle(WheelPickerStyle()) // You can change the picker style here
       }
}

#Preview {
    component()
}
