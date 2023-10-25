//
//  ContentView.swift
//  TryMeAppSwiftUI
//
//  Created by Lera Savchenko on 25.10.23.
//

import SwiftUI

struct ContentView: View {
    var targetValue: Int
    var currentValue: Int
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближe к: \(targetValue)")
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 16, trailing: 10))
//            ButtonView(title: "Проверь меня!", action: <#() -> Void#>)
//            ButtonView(title: "Начать заново", action: <#() -> Int#>)
                .padding()
        }
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
