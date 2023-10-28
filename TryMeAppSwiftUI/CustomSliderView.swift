//
//  Slider.swift
//  TryMeAppSwiftUI
//
//  Created by Lera Savchenko on 25.10.23.
//

import SwiftUI

struct CustomSliderView: UIViewRepresentable {
    @Binding var currentValue: Double
    
    let alpha: Int
    let color: UIColor
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged),
            for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
        uiView.thumbTintColor = color.withAlphaComponent(CGFloat(alpha) / 100)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}

extension CustomSliderView {
    class Coordinator: NSObject {
        
        @Binding var currentValue: Double
        
        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            currentValue = Double(sender.value)
        }
    }
}

struct CustomSliderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSliderView(currentValue: .constant(50), alpha: 1, color: .red)
    }
}
