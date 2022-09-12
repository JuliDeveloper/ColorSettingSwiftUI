//
//  SliderView.swift
//  ColorSettingSwiftUI
//
//  Created by Julia Romanenko on 05.08.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var numberOfColor: Double
    @Binding var alertPresented: Bool

    var color: Color
        
    var body: some View {
        HStack {
            Text("\(lround(numberOfColor))")
                .frame(width: 40)
            Slider(value: $numberOfColor, in: 0...255, step: 1)
                .tint(color)
            TextFieldForColor(numberOfColor: $numberOfColor)
                .onChange(of: numberOfColor) { newValue in
                    if newValue > 255 {
                        numberOfColor = 0
                        alertPresented.toggle()
                        return
                    }
                }
        }
    }
}
