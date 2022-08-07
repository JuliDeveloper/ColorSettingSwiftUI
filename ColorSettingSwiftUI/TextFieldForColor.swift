//
//  TextFieldForColor.swift
//  ColorSettingSwiftUI
//
//  Created by Julia Romanenko on 05.08.2022.
//

import SwiftUI

struct TextFieldForColor: View {
    
    @Binding var numberOfColor: Double

    var body: some View {
        TextField("", value: $numberOfColor, formatter: NumberFormatter())
            .frame(width: 40)
            .multilineTextAlignment(.center)
            .padding()
            .background(Color.white)
            .cornerRadius(10)

    }
}


