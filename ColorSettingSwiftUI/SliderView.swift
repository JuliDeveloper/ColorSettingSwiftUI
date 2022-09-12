//
//  SliderView.swift
//  ColorSettingSwiftUI
//
//  Created by Julia Romanenko on 05.08.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""

    let color: Color
        
    var body: some View {
        HStack {
            ColorValueTextView(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(newValue))"
                }
            
            TextFieldForColor(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            SliderView(sliderValue: .constant(100), color: .red)
        }
    }
}
