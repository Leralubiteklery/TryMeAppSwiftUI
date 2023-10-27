//
//  ContentView.swift
//  TryMeAppSwiftUI
//
//  Created by Lera Savchenko on 25.10.23.
//

import SwiftUI

struct ContentView: View {
    @State var targetValue = Int.random(in: 1...100)
    @State private var alertPresented = false
    @State var currentValue: Int
    
    var body: some View {
        VStack {
            Text("Move slider as close to \(targetValue) as possible")
            HStack {
                Text("0")
                Slider(currentValue: $currentValue)
                Text("100")
            }
            .padding()
//          ButtonView(title: "Try me!", action: computeScore())
            Button("Start over", action: startOver)
                .padding()
        }
    }
    
    func startOver() {
        targetValue = Int.random(in: 1...100)
    }
    
    func computeScore() -> Int {
        let difference = abs(targetValue - currentValue)
        return 100 - difference
    }
    
    func checkResult() {
        
    }
}

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(targetValue: 11, currentValue: 0)
    }
}
