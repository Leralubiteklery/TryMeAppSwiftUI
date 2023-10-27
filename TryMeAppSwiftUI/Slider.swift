//
//  Slider.swift
//  TryMeAppSwiftUI
//
//  Created by Lera Savchenko on 25.10.23.
//

import SwiftUI

struct Slider: UIViewRepresentable {
    @Binding var currentValue: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.thumbTintColor = .red
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider(currentValue: .constant(50))
    }
}
