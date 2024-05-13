//
//  PracticeOne.swift
//  Beam-O
//
//  Created by Farid Aqil Ariza on 08/05/24.
//

import SwiftUI

struct PracticeOne: View {
    
    @State private var human: String = "👤"
    @State private var robot: String = "🤖"
    @State private var humanscore: Int = 0
    @State private var robotscore: Int = 0
    @State private var results: String = "none win"
    
    var icon: [String] = ["🪨", "📄", "✂️"]
    var body: some View {
        Spacer()
        HStack {
            VStack{
                Text(
                    human)
                .font(.system(size: 50))
                .padding(50)
                .background(.inactivecolor)
                .cornerRadius(16)
                Text("Human")
                Text(String(humanscore))
            }
            Text("vs")
            VStack {
                Text(robot)
                    .font(.system(size: 50))
                    .padding(50)
                    .background(.inactivecolor)
                    .cornerRadius(16)
                Text("Computer")
                Text(String(robotscore))
            }
            
        }
        VStack {
            HStack (spacing:10) {
                Button("🪨"){
                    human = "🪨"
                    robot = icon.randomElement()!
                    scoring()
                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.cyan)
                .cornerRadius(16)
                Button("📄"){
                    human = "📄"
                    robot = icon.randomElement()!
                    scoring()
                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.cyan)
                .cornerRadius(16)
                Button("✂️"){
                    human = "✂️"
                    robot = icon.randomElement()!
                    scoring()
                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.cyan)
                .cornerRadius(16)
            }
            .padding(.horizontal, 12)
            Text("This round human choose \(human) and computer chose \(robot) so \(results)")
                .padding(.horizontal, 12)
        }
        Spacer()
        Spacer()
        Button("reset"){
            human="👤"
            robot="🤖"
            humanscore=0
            robotscore=0
            results="none win"
        }
    }
    
    func scoring(){
        if human == "📄" && robot == "✂️" {
            robotscore += 1
            results = "robot win"
        }
        else if human == "📄" && robot == "🪨" {
            humanscore += 1
            results = "human win"
        }
        else if human == "🪨" && robot == "✂️" {
            humanscore += 1
            results = "human win"
        }
        else if human == "🪨" && robot == "📄" {
            robotscore += 1
            results = "robot win"
        }
        else if human == "✂️" && robot == "📄" {
            humanscore += 1
            results = "human win"
        }
        else if human == "✂️" && robot == "🪨" {
            robotscore += 1
            results = "robot win"
        }
        else {
            results = "draw!"
        }
        
    }
}

#Preview {
    PracticeOne()
}
