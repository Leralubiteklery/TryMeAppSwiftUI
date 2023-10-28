//
//  ContentView.swift
//  TryMeAppSwiftUI
//
//  Created by Lera Savchenko on 25.10.23.
//

import SwiftUI

struct ContentView: View {
    @State private var targetValue = Int.random(in: 1...100)
    @State private var alertPresented = false
    @State var currentValue: Double
    @State var result: Int
    
    var body: some View {
        VStack {
            Text("Move slider as close to \(targetValue) as possible")
            HStack {
                Text("0")
                CustomSliderView(
                    currentValue:$currentValue,
                    alpha: computeScore(),
                    color: .red
                )
                Text("100")
            }
            .padding()
            Button("Try me!") {
                alertPresented.toggle()
            }
            .alert("Your score:", isPresented: $alertPresented,actions: {}) {
                Text(computeScore().formatted())
            }
            Button("Start over") {
                targetValue = Int.random(in: 1...100)
                currentValue = Double.random(in: 1...100)
            }
            .padding()
        }
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(currentValue: 0, result: 50)
    }
}
