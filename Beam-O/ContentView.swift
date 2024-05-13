//
//  ContentView.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 26/04/24.
//

import SwiftUI

enum Goal {
    case lose
    case maintain
    case gain
}
enum Gender {
    case male
    case female
}
enum Activity {
    case sedentary
    case light
    case moderate
    case very
    case extra
}

@Observable class Application {
    var incomeD: Int? = nil
    
    var goal: Goal? = nil
    var gender: Gender? = nil
    var weight: Int? = nil
    var height: Int? = nil
    var age: Int? = nil
    var activity: Activity? = nil
    var path: [Int] = []
}

struct ContentView: View {
    @State var app = Application()
    @State var isOpened = false
    
    var body: some View {
        NavigationStack(path: $app.path) {
            HomeEmpty()
                .navigationDestination(for: Int.self) { id in
                    if id == 0 {
                        QuestionsOne()
                    } else if id == 1 {
                        QuestionsTwo()
                    } else if id == 2 {
                        QuestionsThree()
                    } else if id == 3 {
                        QuestionsFour()
                    } else if id == 4 {
                        SummaryOne()
                    }
                }
        }
        .environment(app)
    }
}

#Preview {
    ContentView()
}
