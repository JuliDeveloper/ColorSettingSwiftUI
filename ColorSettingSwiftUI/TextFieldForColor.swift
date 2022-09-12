//
//  TextFieldForColor.swift
//  ColorSettingSwiftUI
//
//  Created by Julia Romanenko on 05.08.2022.
//

import SwiftUI

struct TextFieldForColor: View {
    
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var alertPresented = false

    var body: some View {
        TextField("", text: $textValue) { _ in
            checkValue()
        }
        .frame(width: 55, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .keyboardType(.asciiCapableNumberPad)
        .alert("Wrong Format", isPresented: $alertPresented, actions: {}) {
            Text("Enter value from 0 to 255")
        }
    }
}

extension TextFieldForColor {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        alertPresented.toggle()
        value = 0
        textValue = "0"
    }
}

struct TextFieldForColor_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            TextFieldForColor(textValue: .constant("128"), value: .constant(128.0))
        }
    }
}

