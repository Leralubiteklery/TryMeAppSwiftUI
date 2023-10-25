//
//  TryMeAppSwiftUIApp.swift
//  TryMeAppSwiftUI
//
//  Created by Lera Savchenko on 25.10.23.
//

import SwiftUI

@main
struct TryMeAppSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(targetValue: 11, currentValue: 0)
        }
    }
}
